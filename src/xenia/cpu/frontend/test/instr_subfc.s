test_subfc_1:
  #_ REGISTER_IN r10 0x00000000000103BF
  #_ REGISTER_IN r11 0x00000000000103C0
  subfc r3, r10, r11
  adde r4, r0, r0
  blr
  #_ REGISTER_OUT r10 0x00000000000103BF
  #_ REGISTER_OUT r11 0x00000000000103C0
  #_ REGISTER_OUT r3 1
  #_ REGISTER_OUT r4 1

test_subfc_2:
  #_ REGISTER_IN r10 0
  #_ REGISTER_IN r11 0
  subfc r3, r10, r11
  adde r4, r0, r0
  blr
  #_ REGISTER_OUT r10 0
  #_ REGISTER_OUT r11 0
  #_ REGISTER_OUT r3 0
  #_ REGISTER_OUT r4 1

test_subfc_3:
  #_ REGISTER_IN r10 1
  #_ REGISTER_IN r11 0
  subfc r3, r10, r11
  adde r4, r0, r0
  blr
  #_ REGISTER_OUT r10 1
  #_ REGISTER_OUT r11 0
  #_ REGISTER_OUT r3 -1
  #_ REGISTER_OUT r4 0

test_subfc_4:
  #_ REGISTER_IN r10 0
  #_ REGISTER_IN r11 1
  subfc r3, r10, r11
  adde r4, r0, r0
  blr
  #_ REGISTER_OUT r10 0
  #_ REGISTER_OUT r11 1
  #_ REGISTER_OUT r3 1
  #_ REGISTER_OUT r4 1

test_subfc_5:
  #_ REGISTER_IN r10 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r11 0xFFFFFFFFFFFFFFFF
  subfc r3, r10, r11
  adde r4, r0, r0
  blr
  #_ REGISTER_OUT r10 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r11 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r3 0
  #_ REGISTER_OUT r4 1
