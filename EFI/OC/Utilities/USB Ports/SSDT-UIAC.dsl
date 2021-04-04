DefinitionBlock ("", "SSDT", 2, "ACDT", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            // XHC (8086_a36d)
            "XHC", Package()
            {
                "port-count", Buffer() { 0x17, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                      "HS01", Package()
                      {
                          "name", Buffer() { "HS01" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Front USB 3.1 Gen 2 Type-C Port - USB 2.0 Mode (USB C Motherboard Header)" },
                      },
                      "HS03", Package()
                      {
                          "name", Buffer() { "HS03" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Rear USB 3.1 Gen 2 Port (Red) - Top Port (USB 2.0 Mode)" },
                      },
                      "HS04", Package()
                      {
                          "name", Buffer() { "HS04" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x04, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Rear USB 3.1 Gen 2 Port (Red) - Bottom Port (USB 2.0 Mode)" },
                      },
                      "HS06", Package()
                      {
                          "name", Buffer() { "HS06" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x06, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Front Case USB 3.1 Gen 2 Port (USB 2.0 Mode)" },
                      },
                      "HS07", Package()
                      {
                          "name", Buffer() { "HS07" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x07, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Rear 4 Port USB DAC UP Hub (USB 2.0 Mode)" },
                      },
                      "HS08", Package()
                      {
                          "name", Buffer() { "HS08" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel Titan Ridge Thunderbolt 3 Port - Top Port (USB 2.0 Mode)" },
                      },
                      "HS09", Package()
                      {
                          "name", Buffer() { "HS09" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x09, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Corsair K55 Keyboard - Rear USB 2.0 Port (Right Port)" },
                      },
                      "HS10", Package()
                      {
                          "name", Buffer() { "HS10" },
                          "UsbConnector", 0,
                          "port", Buffer() { 0x0A, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Corsair Harpoon Mouse - Rear USB 2.0 Port (Left Port)" },
                      },
                      "HS11", Package()
                      {
                          "name", Buffer() { "HS11" },
                          "UsbConnector", 255,
                          "port", Buffer() { 0x0B, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Broadcom BRCM20702 (Internal USB 2.0 Header)" },
                      },
                      "HS13", Package()
                      {
                          "name", Buffer() { "HS13" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x0D, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Intel Titan Ridge Thunderbolt 3 Port - Bottom Port (USB 2.0 Mode)" },
                      },
                      "SS01", Package()
                      {
                          "name", Buffer() { "SS01" },
                          "UsbConnector", 9,
                          "port", Buffer() { 0x11, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Front USB 3.1 Gen 2 Type-C Port - USB 3.1 Gen 2 Mode (USB C Motherboard Header)" },
                      },
                      "SS03", Package()
                      {
                          "name", Buffer() { "SS03" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x13, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Rear USB 3.1 Gen 2 Port (Red) - Top Port (USB 3.1 Gen 2 Mode)" },
                      },
                      "SS04", Package()
                      {
                          "name", Buffer() { "SS04" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x14, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Rear USB 3.1 Gen 2 Port (Red) - Bottom Port (USB 3.1 Gen 2 Mode)" },
                      },
                      "SS06", Package()
                      {
                          "name", Buffer() { "SS06" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x16, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Front Case USB 3.1 Gen 2 Port (USB 3.1 Gen 2 Mode)" },
                      },
                      "SS07", Package()
                      {
                          "name", Buffer() { "SS07" },
                          "UsbConnector", 3,
                          "port", Buffer() { 0x17, 0x00, 0x00, 0x00 },
                          "Comment", Buffer() { "Rear 4 Port USB DAC UP Hub (USB 3.0 Mode)" },
                      },
                },
            },
        })
    }
}
