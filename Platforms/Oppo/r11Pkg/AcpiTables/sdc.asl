//
// Storage - eMMC 
//
Device (SDC1)
{
    //Name (_DEP, Package(0x1) {
    //    \_SB_.PEP0,
    //})
    Name (_HID, "QCOM24BF")
    Name (_CID, "ACPI\QCOM24BF")
    Name (_UID, 0)
    Name (_CCA, 0)
 
    Method (_CRS, 0x0, NotSerialized) {
        Name (RBUF, ResourceTemplate ()
        {
            // SDCC1 register address space
            Memory32Fixed (ReadWrite, 0x0C0C4000, 0x00002000)

            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {142}
            Interrupt(ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) {144}
        })
        Return (RBUF)
    }
 
    Device (EMMC) {
        Method (_ADR) {
            Return (8)
        }
 
        Method (_RMV) {
            Return (0)
        }
    }
    Method(_DIS)
    {
        // Place holder to allow disable
    }
    Method (_STA) 
    {
        Return(0xF)
    }
}