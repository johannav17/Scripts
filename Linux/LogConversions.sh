Log 1:

GET / HTTP/1.1
Host: widgets.com
Connection: keep-alive
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9,nb;q=0.8

Log 2:

File Transfer Protocol (FTP)
    230 Login successful.\r\n
        Response code: User logged in, proceed (230)
        Response arg: Login successful.

Log 3:

TLSv1.2 Record Layer: Application Data Protocol: http-over-tls
    Content Type: Application Data (23)
    Version: TLS 1.2 (0x0303)
    Length: 56
    Encrypted Application Data: d03ff41452da9e9c3ec76cbeb35e8ffc1f64bf80f512924a?

Log 4:



Log 5: 

Address Resolution Protocol (request)
    Hardware type: Ethernet (1)
    Protocol type: IPv4 (0x0800)
    Hardware size: 6
    Protocol size: 4
    Opcode: request (1)
    Sender MAC address: Technico_65:1a:36 (88:f7:c7:65:1a:36)
    Sender IP address: 10.0.0.1
    Target MAC address: 00:00:00_00:00:00 (00:00:00:00:00:00)
    Target IP address: 10.0.0.6

Bonus:

HCI H4
    [Direction: Unspecified (0xffffffff)]
    HCI Packet Type: HCI Command (0x01)
HCI Command - Read Local Supported Features
    Command Opcode: Read Local Supported Features (0x1003)
    Parameter Total Length: 0
    [Response in frame: 4]
    [Command-Response Delta: 4.181ms]
