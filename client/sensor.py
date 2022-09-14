import os
import asyncio
import random
import logging

from azure.iot.device.aio import IoTHubDeviceClient
from azure.iot.device.aio import ProvisioningDeviceClient
from azure.iot.device import MethodResponse
from datetime import timedelta, datetime
import pnp_helper

model_id = "dtmi:com:example:senor;0001"
sensor_id = "Sensor1"

def stdin_listener():
    while True:
        selection = input("Press Q to quit\n")
        if selection == "Q" or selection == "q":
            print("Quitting...")
            break

async def send_telemetry_from_temp_controller(device_client, telemetry_msg, component_name=None):
    msg = pnp_helper.create_telemetry(telemetry_msg, component_name)
    #msg = ("telemetry_msg")#: telemetry_msg, "component_name": component_name}
    await device_client.send_message(msg)
    print("Sent message")
    print(msg)
    await asyncio.sleep(5)

async def main():
    conn_str = 'HostName=jeariothub1.azure-devices.net;DeviceId=SampleDevice001;SharedAccessKey=e+RKiEYlrqHXjjrROjMvFRvEQYCArXCLcDA0I+rP3iU='
    print("Connecting using Connection String " + conn_str)
    device_client = IoTHubDeviceClient.create_from_connection_string(
        conn_str, product_info=model_id
    )

    # Connect the client.
    await device_client.connect()
    
    ################################################
    # Function to send telemetry every 8 seconds
    async def send_telemetry():
        print("Sending telemetry from various components")

        while True:
            weight = random.randrange(50, 120)
            height = random.randrange(100, 170)
            age = random.randrange(20, 70)
            #THERMOSTAT_1.record(curr_temp_ext)

            body_parameters = {"weight": weight, "height": height, "age": age}
            await send_telemetry_from_temp_controller(
                device_client, body_parameters, sensor_id
            )

    send_telemetry_task = asyncio.ensure_future(send_telemetry())

    # Run the stdin listener in the event loop
    loop = asyncio.get_running_loop()
    user_finished = loop.run_in_executor(None, stdin_listener)
    # # Wait for user to indicate they are done listening for method calls
    await user_finished

    send_telemetry_task.cancel()

    # Finally, shut down the client
    await device_client.shutdown()


#####################################################
# EXECUTE MAIN

if __name__ == "__main__":
    asyncio.run(main())