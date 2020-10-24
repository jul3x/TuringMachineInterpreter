/* get length of word and put starting element */

start 1 length_1 a R
start 2 length_1 b R
length_1 1 length_2 1 R
length_1 2 length_2 2 R
length_2 1 length_3 1 R
length_2 2 length_3 2 R
length_3 1 length_4 1 R
length_3 2 length_4 2 R
length_4 1 length_5 1 R
length_4 2 length_5 2 R
length_5 1 length_6 1 R
length_5 2 length_6 2 R
length_6 1 length_7 1 R
length_6 2 length_7 2 R
length_7 1 length_8 1 R
length_7 2 length_8 2 R
length_8 1 length_9 1 R
length_8 2 length_9 2 R
length_9 1 length_10 1 R
length_9 2 length_10 2 R
length_10 1 length_11 1 R
length_10 2 length_11 2 R
length_11 1 length_12 1 R
length_11 2 length_12 2 R
length_12 1 length_13 1 R
length_12 2 length_13 2 R
length_13 1 length_14 1 R
length_13 2 length_14 2 R
length_14 1 length_15 1 R
length_14 2 length_15 2 R
length_15 1 length_16 1 R
length_15 2 length_16 2 R
length_16 1 length_17 1 R
length_16 2 length_17 2 R
length_17 1 length_18 1 R
length_17 2 length_18 2 R
length_18 1 length_19 1 R
length_18 2 length_19 2 R
length_19 1 length_20 1 R
length_19 2 length_20 2 R

/* if length odd reject */

length_1 0 reject 0 S
length_3 0 reject 0 S
length_5 0 reject 0 S
length_7 0 reject 0 S
length_9 0 reject 0 S
length_11 0 reject 0 S
length_13 0 reject 0 S
length_15 0 reject 0 S
length_17 0 reject 0 S
length_19 0 reject 0 S

/* empty word accept */
start 0 accept 0 S

/* even words */
length_4 0 length_4_remove_and_check 0 L
length_6 0 length_6_remove_and_check 0 L
length_8 0 length_8_remove_and_check 0 L
length_10 0 length_10_remove_and_check 0 L
length_12 0 length_12_remove_and_check 0 L
length_14 0 length_14_remove_and_check 0 L
length_16 0 length_16_remove_and_check 0 L
length_18 0 length_18_remove_and_check 0 L
length_20 0 length_20_remove_and_check 0 L

/* check if 2-length word is squared */

length_2 0 length_2_ret_2 0 L
length_2_ret_2 1 length_2_ret_1_1 1 L
length_2_ret_1_1 a accept 1 S
length_2_ret_1_1 b reject 2 S
length_2_ret_2 2 length_2_ret_1_2 2 L
length_2_ret_1_2 b accept 1 S
length_2_ret_1_2 a reject 1 S

/* length_20 */
/* check if 1 */
length_20_check_10_1 1 length_20_check_9_1 1 L
length_20_check_10_1 2 length_20_check_9_1 2 L
length_20_check_9_1 1 length_20_check_8_1 1 L
length_20_check_9_1 2 length_20_check_8_1 2 L
length_20_check_8_1 1 length_20_check_7_1 1 L
length_20_check_8_1 2 length_20_check_7_1 2 L
length_20_check_7_1 1 length_20_check_6_1 1 L
length_20_check_7_1 2 length_20_check_6_1 2 L
length_20_check_6_1 1 length_20_check_5_1 1 L
length_20_check_6_1 2 length_20_check_5_1 2 L
length_20_check_5_1 1 length_20_check_4_1 1 L
length_20_check_5_1 2 length_20_check_4_1 2 L
length_20_check_4_1 1 length_20_check_3_1 1 L
length_20_check_4_1 2 length_20_check_3_1 2 L
length_20_check_3_1 1 length_20_check_2_1 1 L
length_20_check_3_1 2 length_20_check_2_1 2 L
length_20_check_2_1 1 length_20_check_1_1 1 L
length_20_check_2_1 2 length_20_check_1_1 2 L
length_20_check_1_1 1 length_20_return_to_end 1 R
length_20_check_1_1 2 reject 2 S
length_20_check_1_1 a accept 1 S
length_20_check_1_1 b reject 2 S

/* check if 2 */
length_20_check_10_2 1 length_20_check_9_2 1 L
length_20_check_10_2 2 length_20_check_9_2 2 L
length_20_check_9_2 1 length_20_check_8_2 1 L
length_20_check_9_2 2 length_20_check_8_2 2 L
length_20_check_8_2 1 length_20_check_7_2 1 L
length_20_check_8_2 2 length_20_check_7_2 2 L
length_20_check_7_2 1 length_20_check_6_2 1 L
length_20_check_7_2 2 length_20_check_6_2 2 L
length_20_check_6_2 1 length_20_check_5_2 1 L
length_20_check_6_2 2 length_20_check_5_2 2 L
length_20_check_5_2 1 length_20_check_4_2 1 L
length_20_check_5_2 2 length_20_check_4_2 2 L
length_20_check_4_2 1 length_20_check_3_2 1 L
length_20_check_4_2 2 length_20_check_3_2 2 L
length_20_check_3_2 1 length_20_check_2_2 1 L
length_20_check_3_2 2 length_20_check_2_2 2 L
length_20_check_2_2 1 length_20_check_1_2 1 L
length_20_check_2_2 2 length_20_check_1_2 2 L
length_20_check_1_2 1 reject 1 S
length_20_check_1_2 2 length_20_return_to_end 2 R
length_20_check_1_2 a reject 1 S
length_20_check_1_2 b accept 2 S

/* return to end */
length_20_return_to_end 1 length_20_return_to_end 1 R
length_20_return_to_end 2 length_20_return_to_end 2 R
length_20_return_to_end 0 length_20_remove_and_check 0 L
length_20_remove_and_check 1 length_20_check_10_1 0 L
length_20_remove_and_check 2 length_20_check_10_2 0 L

/* length_18 */
/* check if 1 */
length_18_check_9_1 1 length_18_check_8_1 1 L
length_18_check_9_1 2 length_18_check_8_1 2 L
length_18_check_8_1 1 length_18_check_7_1 1 L
length_18_check_8_1 2 length_18_check_7_1 2 L
length_18_check_7_1 1 length_18_check_6_1 1 L
length_18_check_7_1 2 length_18_check_6_1 2 L
length_18_check_6_1 1 length_18_check_5_1 1 L
length_18_check_6_1 2 length_18_check_5_1 2 L
length_18_check_5_1 1 length_18_check_4_1 1 L
length_18_check_5_1 2 length_18_check_4_1 2 L
length_18_check_4_1 1 length_18_check_3_1 1 L
length_18_check_4_1 2 length_18_check_3_1 2 L
length_18_check_3_1 1 length_18_check_2_1 1 L
length_18_check_3_1 2 length_18_check_2_1 2 L
length_18_check_2_1 1 length_18_check_1_1 1 L
length_18_check_2_1 2 length_18_check_1_1 2 L
length_18_check_1_1 1 length_18_return_to_end 1 R
length_18_check_1_1 2 reject 2 S
length_18_check_1_1 a accept 1 S
length_18_check_1_1 b reject 2 S

/* check if 2 */
length_18_check_9_2 1 length_18_check_8_2 1 L
length_18_check_9_2 2 length_18_check_8_2 2 L
length_18_check_8_2 1 length_18_check_7_2 1 L
length_18_check_8_2 2 length_18_check_7_2 2 L
length_18_check_7_2 1 length_18_check_6_2 1 L
length_18_check_7_2 2 length_18_check_6_2 2 L
length_18_check_6_2 1 length_18_check_5_2 1 L
length_18_check_6_2 2 length_18_check_5_2 2 L
length_18_check_5_2 1 length_18_check_4_2 1 L
length_18_check_5_2 2 length_18_check_4_2 2 L
length_18_check_4_2 1 length_18_check_3_2 1 L
length_18_check_4_2 2 length_18_check_3_2 2 L
length_18_check_3_2 1 length_18_check_2_2 1 L
length_18_check_3_2 2 length_18_check_2_2 2 L
length_18_check_2_2 1 length_18_check_1_2 1 L
length_18_check_2_2 2 length_18_check_1_2 2 L
length_18_check_1_2 1 reject 1 S
length_18_check_1_2 2 length_18_return_to_end 2 R
length_18_check_1_2 a reject 1 S
length_18_check_1_2 b accept 2 S

/* return to end */
length_18_return_to_end 1 length_18_return_to_end 1 R
length_18_return_to_end 2 length_18_return_to_end 2 R
length_18_return_to_end 0 length_18_remove_and_check 0 L
length_18_remove_and_check 1 length_18_check_9_1 0 L
length_18_remove_and_check 2 length_18_check_9_2 0 L


/* length_16 */
/* check if 1 */
length_16_check_8_1 1 length_16_check_7_1 1 L
length_16_check_8_1 2 length_16_check_7_1 2 L
length_16_check_7_1 1 length_16_check_6_1 1 L
length_16_check_7_1 2 length_16_check_6_1 2 L
length_16_check_6_1 1 length_16_check_5_1 1 L
length_16_check_6_1 2 length_16_check_5_1 2 L
length_16_check_5_1 1 length_16_check_4_1 1 L
length_16_check_5_1 2 length_16_check_4_1 2 L
length_16_check_4_1 1 length_16_check_3_1 1 L
length_16_check_4_1 2 length_16_check_3_1 2 L
length_16_check_3_1 1 length_16_check_2_1 1 L
length_16_check_3_1 2 length_16_check_2_1 2 L
length_16_check_2_1 1 length_16_check_1_1 1 L
length_16_check_2_1 2 length_16_check_1_1 2 L
length_16_check_1_1 1 length_16_return_to_end 1 R
length_16_check_1_1 2 reject 2 S
length_16_check_1_1 a accept 1 S
length_16_check_1_1 b reject 2 S

/* check if 2 */
length_16_check_8_2 1 length_16_check_7_2 1 L
length_16_check_8_2 2 length_16_check_7_2 2 L
length_16_check_7_2 1 length_16_check_6_2 1 L
length_16_check_7_2 2 length_16_check_6_2 2 L
length_16_check_6_2 1 length_16_check_5_2 1 L
length_16_check_6_2 2 length_16_check_5_2 2 L
length_16_check_5_2 1 length_16_check_4_2 1 L
length_16_check_5_2 2 length_16_check_4_2 2 L
length_16_check_4_2 1 length_16_check_3_2 1 L
length_16_check_4_2 2 length_16_check_3_2 2 L
length_16_check_3_2 1 length_16_check_2_2 1 L
length_16_check_3_2 2 length_16_check_2_2 2 L
length_16_check_2_2 1 length_16_check_1_2 1 L
length_16_check_2_2 2 length_16_check_1_2 2 L
length_16_check_1_2 1 reject 1 S
length_16_check_1_2 2 length_16_return_to_end 2 R
length_16_check_1_2 a reject 1 S
length_16_check_1_2 b accept 2 S

/* return to end */
length_16_return_to_end 1 length_16_return_to_end 1 R
length_16_return_to_end 2 length_16_return_to_end 2 R
length_16_return_to_end 0 length_16_remove_and_check 0 L
length_16_remove_and_check 1 length_16_check_8_1 0 L
length_16_remove_and_check 2 length_16_check_8_2 0 L

/* length_14 */
/* check if 1 */
length_14_check_7_1 1 length_14_check_6_1 1 L
length_14_check_7_1 2 length_14_check_6_1 2 L
length_14_check_6_1 1 length_14_check_5_1 1 L
length_14_check_6_1 2 length_14_check_5_1 2 L
length_14_check_5_1 1 length_14_check_4_1 1 L
length_14_check_5_1 2 length_14_check_4_1 2 L
length_14_check_4_1 1 length_14_check_3_1 1 L
length_14_check_4_1 2 length_14_check_3_1 2 L
length_14_check_3_1 1 length_14_check_2_1 1 L
length_14_check_3_1 2 length_14_check_2_1 2 L
length_14_check_2_1 1 length_14_check_1_1 1 L
length_14_check_2_1 2 length_14_check_1_1 2 L
length_14_check_1_1 1 length_14_return_to_end 1 R
length_14_check_1_1 2 reject 2 S
length_14_check_1_1 a accept 1 S
length_14_check_1_1 b reject 2 S

/* check if 2 */
length_14_check_7_2 1 length_14_check_6_2 1 L
length_14_check_7_2 2 length_14_check_6_2 2 L
length_14_check_6_2 1 length_14_check_5_2 1 L
length_14_check_6_2 2 length_14_check_5_2 2 L
length_14_check_5_2 1 length_14_check_4_2 1 L
length_14_check_5_2 2 length_14_check_4_2 2 L
length_14_check_4_2 1 length_14_check_3_2 1 L
length_14_check_4_2 2 length_14_check_3_2 2 L
length_14_check_3_2 1 length_14_check_2_2 1 L
length_14_check_3_2 2 length_14_check_2_2 2 L
length_14_check_2_2 1 length_14_check_1_2 1 L
length_14_check_2_2 2 length_14_check_1_2 2 L
length_14_check_1_2 1 reject 1 S
length_14_check_1_2 2 length_14_return_to_end 2 R
length_14_check_1_2 a reject 1 S
length_14_check_1_2 b accept 2 S

/* return to end */
length_14_return_to_end 1 length_14_return_to_end 1 R
length_14_return_to_end 2 length_14_return_to_end 2 R
length_14_return_to_end 0 length_14_remove_and_check 0 L
length_14_remove_and_check 1 length_14_check_7_1 0 L
length_14_remove_and_check 2 length_14_check_7_2 0 L

/* length_12 */
/* check if 1 */
length_12_check_6_1 1 length_12_check_5_1 1 L
length_12_check_6_1 2 length_12_check_5_1 2 L
length_12_check_5_1 1 length_12_check_4_1 1 L
length_12_check_5_1 2 length_12_check_4_1 2 L
length_12_check_4_1 1 length_12_check_3_1 1 L
length_12_check_4_1 2 length_12_check_3_1 2 L
length_12_check_3_1 1 length_12_check_2_1 1 L
length_12_check_3_1 2 length_12_check_2_1 2 L
length_12_check_2_1 1 length_12_check_1_1 1 L
length_12_check_2_1 2 length_12_check_1_1 2 L
length_12_check_1_1 1 length_12_return_to_end 1 R
length_12_check_1_1 2 reject 2 S
length_12_check_1_1 a accept 1 S
length_12_check_1_1 b reject 2 S

/* check if 2 */
length_12_check_6_2 1 length_12_check_5_2 1 L
length_12_check_6_2 2 length_12_check_5_2 2 L
length_12_check_5_2 1 length_12_check_4_2 1 L
length_12_check_5_2 2 length_12_check_4_2 2 L
length_12_check_4_2 1 length_12_check_3_2 1 L
length_12_check_4_2 2 length_12_check_3_2 2 L
length_12_check_3_2 1 length_12_check_2_2 1 L
length_12_check_3_2 2 length_12_check_2_2 2 L
length_12_check_2_2 1 length_12_check_1_2 1 L
length_12_check_2_2 2 length_12_check_1_2 2 L
length_12_check_1_2 1 reject 1 S
length_12_check_1_2 2 length_12_return_to_end 2 R
length_12_check_1_2 a reject 1 S
length_12_check_1_2 b accept 2 S

/* return to end */
length_12_return_to_end 1 length_12_return_to_end 1 R
length_12_return_to_end 2 length_12_return_to_end 2 R
length_12_return_to_end 0 length_12_remove_and_check 0 L
length_12_remove_and_check 1 length_12_check_6_1 0 L
length_12_remove_and_check 2 length_12_check_6_2 0 L

/* length_10 */
/* check if 1 */
length_10_check_5_1 1 length_10_check_4_1 1 L
length_10_check_5_1 2 length_10_check_4_1 2 L
length_10_check_4_1 1 length_10_check_3_1 1 L
length_10_check_4_1 2 length_10_check_3_1 2 L
length_10_check_3_1 1 length_10_check_2_1 1 L
length_10_check_3_1 2 length_10_check_2_1 2 L
length_10_check_2_1 1 length_10_check_1_1 1 L
length_10_check_2_1 2 length_10_check_1_1 2 L
length_10_check_1_1 1 length_10_return_to_end 1 R
length_10_check_1_1 2 reject 2 S
length_10_check_1_1 a accept 1 S
length_10_check_1_1 b reject 2 S

/* check if 2 */
length_10_check_5_2 1 length_10_check_4_2 1 L
length_10_check_5_2 2 length_10_check_4_2 2 L
length_10_check_4_2 1 length_10_check_3_2 1 L
length_10_check_4_2 2 length_10_check_3_2 2 L
length_10_check_3_2 1 length_10_check_2_2 1 L
length_10_check_3_2 2 length_10_check_2_2 2 L
length_10_check_2_2 1 length_10_check_1_2 1 L
length_10_check_2_2 2 length_10_check_1_2 2 L
length_10_check_1_2 1 reject 1 S
length_10_check_1_2 2 length_10_return_to_end 2 R
length_10_check_1_2 a reject 1 S
length_10_check_1_2 b accept 2 S

/* return to end */
length_10_return_to_end 1 length_10_return_to_end 1 R
length_10_return_to_end 2 length_10_return_to_end 2 R
length_10_return_to_end 0 length_10_remove_and_check 0 L
length_10_remove_and_check 1 length_10_check_5_1 0 L
length_10_remove_and_check 2 length_10_check_5_2 0 L

/* length_8 */
/* check if 1 */
length_8_check_4_1 1 length_8_check_3_1 1 L
length_8_check_4_1 2 length_8_check_3_1 2 L
length_8_check_3_1 1 length_8_check_2_1 1 L
length_8_check_3_1 2 length_8_check_2_1 2 L
length_8_check_2_1 1 length_8_check_1_1 1 L
length_8_check_2_1 2 length_8_check_1_1 2 L
length_8_check_1_1 1 length_8_return_to_end 1 R
length_8_check_1_1 2 reject 2 S
length_8_check_1_1 a accept 1 S
length_8_check_1_1 b reject 2 S

/* check if 2 */
length_8_check_4_2 1 length_8_check_3_2 1 L
length_8_check_4_2 2 length_8_check_3_2 2 L
length_8_check_3_2 1 length_8_check_2_2 1 L
length_8_check_3_2 2 length_8_check_2_2 2 L
length_8_check_2_2 1 length_8_check_1_2 1 L
length_8_check_2_2 2 length_8_check_1_2 2 L
length_8_check_1_2 1 reject 1 S
length_8_check_1_2 2 length_8_return_to_end 2 R
length_8_check_1_2 a reject 1 S
length_8_check_1_2 b accept 2 S

/* return to end */
length_8_return_to_end 1 length_8_return_to_end 1 R
length_8_return_to_end 2 length_8_return_to_end 2 R
length_8_return_to_end 0 length_8_remove_and_check 0 L
length_8_remove_and_check 1 length_8_check_4_1 0 L
length_8_remove_and_check 2 length_8_check_4_2 0 L

/* length_6 */
/* check if 1 */
length_6_check_3_1 1 length_6_check_2_1 1 L
length_6_check_3_1 2 length_6_check_2_1 2 L
length_6_check_2_1 1 length_6_check_1_1 1 L
length_6_check_2_1 2 length_6_check_1_1 2 L
length_6_check_1_1 1 length_6_return_to_end 1 R
length_6_check_1_1 2 reject 2 S
length_6_check_1_1 a accept 1 S
length_6_check_1_1 b reject 2 S

/* check if 2 */
length_6_check_3_2 1 length_6_check_2_2 1 L
length_6_check_3_2 2 length_6_check_2_2 2 L
length_6_check_2_2 1 length_6_check_1_2 1 L
length_6_check_2_2 2 length_6_check_1_2 2 L
length_6_check_1_2 1 reject 1 S
length_6_check_1_2 2 length_6_return_to_end 2 R
length_6_check_1_2 a reject 1 S
length_6_check_1_2 b accept 2 S

/* return to end */
length_6_return_to_end 1 length_6_return_to_end 1 R
length_6_return_to_end 2 length_6_return_to_end 2 R
length_6_return_to_end 0 length_6_remove_and_check 0 L
length_6_remove_and_check 1 length_6_check_3_1 0 L
length_6_remove_and_check 2 length_6_check_3_2 0 L

/* length_4 */
/* check if 1 */
length_4_check_2_1 1 length_4_check_1_1 1 L
length_4_check_2_1 2 length_4_check_1_1 2 L
length_4_check_1_1 1 length_4_return_to_end 1 R
length_4_check_1_1 2 reject 2 S
length_4_check_1_1 a accept 1 S
length_4_check_1_1 b reject 2 S

/* check if 2 */
length_4_check_2_2 1 length_4_check_1_2 1 L
length_4_check_2_2 2 length_4_check_1_2 2 L
length_4_check_1_2 1 reject 1 S
length_4_check_1_2 2 length_4_return_to_end 2 R
length_4_check_1_2 a reject 1 S
length_4_check_1_2 b accept 2 S

/* return to end */
length_4_return_to_end 1 length_4_return_to_end 1 R
length_4_return_to_end 2 length_4_return_to_end 2 R
length_4_return_to_end 0 length_4_remove_and_check 0 L
length_4_remove_and_check 1 length_4_check_2_1 0 L
length_4_remove_and_check 2 length_4_check_2_2 0 L
