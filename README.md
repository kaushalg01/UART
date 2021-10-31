# UART.
UART stands for Universal Asynchronous Receiver/Transmitter. It’s not a
communication protocol like SPI and I2C, but a physical circuit in a
microcontroller, or a stand-alone IC. A UART’s main purpose is to transmit
and receive serial data.
In UART communication, two UARTs communicate directly with each other.
The transmitting UART converts parallel data from a controlling device like a
CPU into serial form, transmits it in serial to the receiving UART, which then
converts the serial data back into parallel data for the receiving device. Only
two wires are needed to transmit data between two UARTs. Data flows
from the Tx pin of the transmitting UART to the Rx pin of the receiving UART.
<br />
The transmitting UART adds start and stop bits to the data packet being transferred. These bits define
the beginning and end of the data packet so the receiving UART knows when
to start reading the bits.
<br />
When the receiving UART detects a start bit, it starts to read the incoming
bits at a specific frequency known as the baud rate. Baud rate is a measure of
the speed of data transfer, expressed in bits per second (bps). Both UARTs
must operate at about the same baud rate.
<br />   <p align="center"> BLOCK DIAGRAM </p>

<p float="left">
<<<<<<< HEAD
<img src="https://user-images.githubusercontent.com/75021962/139570975-7c76365c-3684-4f5a-ace9-10ceaf0c110e.png" width="300" height="400" /> 
<img src="https://user-images.githubusercontent.com/75021962/139571037-e3db714a-a895-4613-939e-7cd9ac23b30b.png" width="300" height="400" />
=======
<img src="https://user-images.githubusercontent.com/75021962/139570975-7c76365c-3684-4f5a-ace9-10ceaf0c110e.png" width="350" height="400" /> 
<img src="https://user-images.githubusercontent.com/75021962/139571037-e3db714a-a895-4613-939e-7cd9ac23b30b.png" width="350" height="400" />
>>>>>>> ffe66da70c553a63d8b452d0947d0869791d3e1e
</p>
</br> <p align="center">FSMs </p>
<p align="left"> Receiver side </p>  
<p align="center"> Transmitter side </p>
<p float="left">
<<<<<<< HEAD
<img src="https://user-images.githubusercontent.com/75021962/139571414-1f471a7b-0514-47a3-a490-22ea8d5162de.png" width="300" height="400" /> 
<img src="https://user-images.githubusercontent.com/75021962/139571449-409c40d1-4e95-4a0e-bbba-15d3a54971a0.png" width="300" height="400" /> 
=======
<img src="https://user-images.githubusercontent.com/75021962/139571414-1f471a7b-0514-47a3-a490-22ea8d5162de.png" width="350" height="400" /> 
<img src="https://user-images.githubusercontent.com/75021962/139571449-409c40d1-4e95-4a0e-bbba-15d3a54971a0.png" width="350" height="400" /> 
>>>>>>> ffe66da70c553a63d8b452d0947d0869791d3e1e
</p>

<p align = "center"> Synthesised block level diagram </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/75021962/139571839-d60747ce-ba1e-489e-9000-ca7f9be6ef4a.png" width="800" height="400" /> </p>
<p align ="center"> OUTPUT WAVEFORM </p>
<p align="center"> <img src="https://user-images.githubusercontent.com/75021962/139572003-4889644a-3f32-4b2f-96d6-abe64234dde7.png" width="800" height="400" /> </p>



