(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32)))
  (import "env" "args" (func $args (type 1)))
  (import "env" "debug" (func $debug (type 1)))
  (import "env" "get_storage" (func $get_storage (type 2)))
  (import "env" "return_data" (func $return_data (type 3)))
  (import "env" "set_storage" (func $set_storage (type 2)))
  (func $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    (set_local 3
      (i32.shl
        (get_local 1)
        (i32.const 2)))
    (block  ;; label = @1
      (block  ;; label = @2
        (loop  ;; label = @3
          (br_if 1 (;@2;)
            (i32.eqz
              (tee_local 1
                (i32.load
                  (get_local 2)))))
          (br_if 2 (;@1;)
            (i32.ge_u
              (tee_local 4
                (i32.load
                  (get_local 1)))
              (get_local 3)))
          (set_local 2
            (i32.add
              (get_local 1)
              (i32.const 4)))
          (br 0 (;@3;)))
        (unreachable))
      (i32.store
        (get_local 0)
        (i32.const 1))
      (return))
    (set_local 5
      (i32.add
        (get_local 1)
        (i32.const 8)))
    (block  ;; label = @4
      (block  ;; label = @5
        (br_if 0 (;@5;)
          (i32.gt_u
            (tee_local 6
              (i32.sub
                (get_local 4)
                (get_local 3)))
            (i32.const 71)))
        (i32.store
          (get_local 2)
          (i32.load offset=4
            (get_local 1)))
        (br 1 (;@4;)))
      (i32.store offset=4
        (tee_local 4
          (i32.add
            (get_local 5)
            (get_local 3)))
        (i32.const 0))
      (i32.store
        (get_local 4)
        (i32.add
          (get_local 6)
          (i32.const -8)))
      (i32.store
        (get_local 1)
        (get_local 3))
      (i32.store
        (get_local 2)
        (get_local 4))
      (i32.store offset=4
        (get_local 4)
        (i32.load offset=4
          (get_local 1))))
    (i32.store offset=4
      (get_local 0)
      (get_local 5))
    (i32.store
      (get_local 0)
      (i32.const 0)))
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (set_local 3
      (i32.const 0))
    (block  ;; label = @1
      (loop  ;; label = @2
        (br_if 1 (;@1;)
          (i32.eq
            (get_local 2)
            (get_local 3)))
        (i32.store8
          (i32.add
            (get_local 0)
            (get_local 3))
          (i32.load8_u
            (i32.add
              (get_local 1)
              (get_local 3))))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br 0 (;@2;)))
      (unreachable))
    (get_local 0))
  (func $memmove (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.ge_u
            (get_local 1)
            (get_local 0)))
        (loop  ;; label = @3
          (br_if 2 (;@1;)
            (i32.eqz
              (get_local 2)))
          (i32.store8
            (i32.add
              (i32.add
                (get_local 0)
                (get_local 2))
              (i32.const -1))
            (i32.load8_u
              (i32.add
                (i32.add
                  (get_local 1)
                  (get_local 2))
                (i32.const -1))))
          (set_local 2
            (i32.add
              (get_local 2)
              (i32.const -1)))
          (br 0 (;@3;)))
        (unreachable))
      (set_local 3
        (get_local 0))
      (loop  ;; label = @4
        (br_if 1 (;@3;)
          (i32.eqz
            (get_local 2)))
        (i32.store8
          (get_local 3)
          (i32.load8_u
            (get_local 1)))
        (set_local 2
          (i32.add
            (get_local 2)
            (i32.const -1)))
        (set_local 1
          (i32.add
            (get_local 1)
            (i32.const 1)))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br 0 (;@4;)))
      (unreachable))
    (get_local 0))
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (set_local 3
      (i32.const 0))
    (block  ;; label = @1
      (loop  ;; label = @2
        (br_if 1 (;@1;)
          (i32.eq
            (get_local 2)
            (get_local 3)))
        (i32.store8
          (i32.add
            (get_local 0)
            (get_local 3))
          (get_local 1))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br 0 (;@2;)))
      (unreachable))
    (get_local 0))
  (func $memcmp (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (set_local 6
      (i32.const 0))
    (set_local 5
      (i32.const 0))
    (block  ;; label = @1
      (loop  ;; label = @2
        (br_if 1 (;@1;)
          (i32.ge_u
            (get_local 5)
            (get_local 2)))
        (set_local 3
          (i32.add
            (get_local 1)
            (get_local 5)))
        (set_local 4
          (i32.add
            (get_local 0)
            (get_local 5)))
        (set_local 5
          (i32.add
            (get_local 5)
            (i32.const 1)))
        (br_if 0 (;@2;)
          (i32.eq
            (tee_local 4
              (i32.load8_u
                (get_local 4)))
            (tee_local 3
              (i32.load8_u
                (get_local 3))))))
      (set_local 6
        (i32.sub
          (get_local 4)
          (get_local 3))))
    (get_local 6))
  (func $_ZN4core3fmt3num54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf3fa95afcb7e8063E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 12
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 80))))
    (set_local 8
      (i32.const 39))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.lt_u
            (tee_local 0
              (i32.load
                (get_local 0)))
            (i32.const 10000)))
        (set_local 8
          (i32.const 39))
        (loop  ;; label = @3
          (i32.store16 align=1
            (i32.add
              (tee_local 5
                (i32.add
                  (i32.add
                    (get_local 12)
                    (i32.const 9))
                  (get_local 8)))
              (i32.const -2))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.rem_u
                    (tee_local 6
                      (i32.rem_u
                        (get_local 0)
                        (i32.const 10000)))
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 68))))
          (i32.store16 align=1
            (i32.add
              (get_local 5)
              (i32.const -4))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.div_u
                    (get_local 6)
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 68))))
          (set_local 8
            (i32.add
              (get_local 8)
              (i32.const -4)))
          (set_local 5
            (i32.gt_u
              (get_local 0)
              (i32.const 99999999)))
          (set_local 0
            (tee_local 6
              (i32.div_u
                (get_local 0)
                (i32.const 10000))))
          (br_if 0 (;@3;)
            (get_local 5))
          (br 2 (;@1;)))
        (unreachable))
      (set_local 6
        (get_local 0)))
    (block  ;; label = @4
      (br_if 0 (;@4;)
        (i32.lt_s
          (get_local 6)
          (i32.const 100)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 12)
            (i32.const 9))
          (tee_local 8
            (i32.add
              (get_local 8)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (i32.rem_u
                (get_local 6)
                (i32.const 100))
              (i32.const 1))
            (i32.const 68))))
      (set_local 6
        (i32.div_u
          (get_local 6)
          (i32.const 100))))
    (block  ;; label = @5
      (block  ;; label = @6
        (br_if 0 (;@6;)
          (i32.gt_s
            (get_local 6)
            (i32.const 9)))
        (i32.store8
          (i32.add
            (i32.add
              (get_local 12)
              (i32.const 9))
            (tee_local 0
              (i32.add
                (get_local 8)
                (i32.const -1))))
          (i32.add
            (get_local 6)
            (i32.const 48)))
        (br 1 (;@5;)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 12)
            (i32.const 9))
          (tee_local 0
            (i32.add
              (get_local 8)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (get_local 6)
              (i32.const 1))
            (i32.const 68)))))
    (i32.store offset=52
      (get_local 12)
      (i32.const 0))
    (i32.store offset=48
      (get_local 12)
      (i32.const 272))
    (i32.store offset=56
      (get_local 12)
      (i32.const 1114112))
    (set_local 5
      (tee_local 6
        (i32.sub
          (i32.const 39)
          (get_local 0))))
    (block  ;; label = @7
      (br_if 0 (;@7;)
        (i32.eqz
          (i32.and
            (tee_local 8
              (i32.load
                (get_local 1)))
            (i32.const 1))))
      (i32.store offset=56
        (get_local 12)
        (i32.const 43))
      (set_local 5
        (i32.add
          (get_local 6)
          (i32.const 1))))
    (set_local 2
      (i32.add
        (i32.add
          (get_local 12)
          (i32.const 9))
        (get_local 0)))
    (i32.store8 offset=63
      (get_local 12)
      (i32.and
        (i32.shr_u
          (get_local 8)
          (i32.const 2))
        (i32.const 1)))
    (set_local 0
      (i32.load offset=8
        (get_local 1)))
    (i32.store offset=68
      (get_local 12)
      (i32.add
        (get_local 12)
        (i32.const 63)))
    (i32.store offset=64
      (get_local 12)
      (i32.add
        (get_local 12)
        (i32.const 56)))
    (i32.store offset=72
      (get_local 12)
      (i32.add
        (get_local 12)
        (i32.const 48)))
    (block  ;; label = @8
      (block  ;; label = @9
        (block  ;; label = @10
          (block  ;; label = @11
            (block  ;; label = @12
              (block  ;; label = @13
                (block  ;; label = @14
                  (block  ;; label = @15
                    (block  ;; label = @16
                      (br_if 0 (;@16;)
                        (i32.ne
                          (get_local 0)
                          (i32.const 1)))
                      (br_if 1 (;@15;)
                        (i32.le_u
                          (tee_local 11
                            (i32.load
                              (i32.add
                                (get_local 1)
                                (i32.const 12))))
                          (get_local 5)))
                      (br_if 2 (;@14;)
                        (i32.and
                          (get_local 8)
                          (i32.const 8)))
                      (set_local 3
                        (i32.sub
                          (get_local 11)
                          (get_local 5)))
                      (br_if 3 (;@13;)
                        (i32.eq
                          (tee_local 0
                            (i32.and
                              (select
                                (i32.const 1)
                                (tee_local 0
                                  (i32.load8_u offset=48
                                    (get_local 1)))
                                (i32.eq
                                  (get_local 0)
                                  (i32.const 3)))
                              (i32.const 3)))
                          (i32.const 2)))
                      (br_if 4 (;@12;)
                        (i32.eqz
                          (get_local 0)))
                      (set_local 9
                        (get_local 3))
                      (set_local 3
                        (i32.const 0))
                      (br 5 (;@11;)))
                    (br_if 5 (;@11;)
                      (call $_ZN4core3fmt9Formatter12pad_integral28_$u7b$$u7b$closure$u7d$$u7d$17hb030538f6c3544b3E
                        (i32.add
                          (get_local 12)
                          (i32.const 64))
                        (get_local 1)))
                    (set_local 0
                      (call_indirect (type 0)
                        (i32.load offset=24
                          (get_local 1))
                        (get_local 2)
                        (get_local 6)
                        (i32.load offset=12
                          (i32.load
                            (i32.add
                              (get_local 1)
                              (i32.const 28))))))
                    (br 7 (;@9;)))
                  (br_if 4 (;@12;)
                    (call $_ZN4core3fmt9Formatter12pad_integral28_$u7b$$u7b$closure$u7d$$u7d$17hb030538f6c3544b3E
                      (i32.add
                        (get_local 12)
                        (i32.const 64))
                      (get_local 1)))
                  (set_local 0
                    (call_indirect (type 0)
                      (i32.load offset=24
                        (get_local 1))
                      (get_local 2)
                      (get_local 6)
                      (i32.load offset=12
                        (i32.load
                          (i32.add
                            (get_local 1)
                            (i32.const 28))))))
                  (br 6 (;@10;)))
                (i32.store8 offset=48
                  (get_local 1)
                  (i32.const 1))
                (i32.store offset=4
                  (get_local 1)
                  (i32.const 48))
                (br_if 3 (;@13;)
                  (call $_ZN4core3fmt9Formatter12pad_integral28_$u7b$$u7b$closure$u7d$$u7d$17hb030538f6c3544b3E
                    (i32.add
                      (get_local 12)
                      (i32.const 64))
                    (get_local 1)))
                (set_local 0
                  (i32.const 0))
                (i32.store offset=76
                  (get_local 12)
                  (i32.const 0))
                (i32.store8 offset=76
                  (get_local 12)
                  (i32.const 48))
                (set_local 5
                  (i32.sub
                    (get_local 11)
                    (get_local 5)))
                (set_local 11
                  (i32.load offset=24
                    (get_local 1)))
                (set_local 1
                  (i32.add
                    (tee_local 9
                      (i32.load
                        (i32.add
                          (get_local 1)
                          (i32.const 28))))
                    (i32.const 12)))
                (block  ;; label = @17
                  (loop  ;; label = @18
                    (br_if 1 (;@17;)
                      (i32.ge_u
                        (get_local 0)
                        (get_local 5)))
                    (br_if 1 (;@17;)
                      (i32.lt_u
                        (tee_local 8
                          (i32.add
                            (get_local 0)
                            (i32.const 1)))
                        (get_local 0)))
                    (set_local 0
                      (get_local 8))
                    (br_if 0 (;@18;)
                      (i32.eqz
                        (call_indirect (type 0)
                          (get_local 11)
                          (i32.add
                            (get_local 12)
                            (i32.const 76))
                          (i32.const 1)
                          (i32.load
                            (get_local 1)))))
                    (br 5 (;@13;)))
                  (unreachable))
                (br_if 3 (;@15;)
                  (call_indirect (type 0)
                    (get_local 11)
                    (get_local 2)
                    (get_local 6)
                    (i32.load
                      (i32.add
                        (get_local 9)
                        (i32.const 12)))))
                (set_local 0
                  (i32.const 0))
                (br 5 (;@13;)))
              (set_local 9
                (i32.shr_u
                  (get_local 3)
                  (i32.const 1)))
              (set_local 3
                (i32.shr_u
                  (i32.add
                    (get_local 3)
                    (i32.const 1))
                  (i32.const 1)))
              (br 1 (;@17;)))
            (set_local 9
              (i32.const 0)))
          (set_local 8
            (i32.const 0))
          (i32.store offset=76
            (get_local 12)
            (i32.const 0))
          (block  ;; label = @19
            (block  ;; label = @20
              (br_if 0 (;@20;)
                (i32.gt_u
                  (tee_local 0
                    (i32.load offset=4
                      (get_local 1)))
                  (i32.const 127)))
              (i32.store8 offset=76
                (get_local 12)
                (get_local 0))
              (set_local 11
                (i32.const 1))
              (br 1 (;@19;)))
            (block  ;; label = @21
              (block  ;; label = @22
                (br_if 0 (;@22;)
                  (i32.ge_u
                    (get_local 0)
                    (i32.const 2048)))
                (set_local 11
                  (i32.const 2))
                (set_local 4
                  (i32.const 1))
                (set_local 5
                  (i32.const 192))
                (set_local 7
                  (i32.const 31))
                (br 1 (;@21;)))
              (block  ;; label = @23
                (block  ;; label = @24
                  (br_if 0 (;@24;)
                    (i32.ge_u
                      (get_local 0)
                      (i32.const 65536)))
                  (set_local 11
                    (i32.const 3))
                  (set_local 4
                    (i32.const 2))
                  (set_local 8
                    (i32.const 1))
                  (set_local 5
                    (i32.const 224))
                  (set_local 7
                    (i32.const 0))
                  (set_local 10
                    (i32.const 15))
                  (br 1 (;@23;)))
                (i32.store8 offset=76
                  (get_local 12)
                  (i32.or
                    (i32.shr_u
                      (get_local 0)
                      (i32.const 18))
                    (i32.const 240)))
                (set_local 11
                  (i32.const 4))
                (set_local 4
                  (i32.const 3))
                (set_local 8
                  (i32.const 2))
                (set_local 5
                  (i32.const 128))
                (set_local 7
                  (i32.const 1))
                (set_local 10
                  (i32.const 63)))
              (i32.store8
                (i32.or
                  (i32.add
                    (get_local 12)
                    (i32.const 76))
                  (get_local 7))
                (i32.or
                  (i32.and
                    (get_local 10)
                    (i32.shr_u
                      (get_local 0)
                      (i32.const 12)))
                  (get_local 5)))
              (set_local 5
                (i32.const 128))
              (set_local 7
                (i32.const 63)))
            (i32.store8
              (i32.add
                (i32.add
                  (get_local 12)
                  (i32.const 76))
                (get_local 8))
              (i32.or
                (i32.and
                  (get_local 7)
                  (i32.shr_u
                    (get_local 0)
                    (i32.const 6)))
                (get_local 5)))
            (i32.store8
              (i32.add
                (i32.add
                  (get_local 12)
                  (i32.const 76))
                (get_local 4))
              (i32.or
                (i32.and
                  (get_local 0)
                  (i32.const 63))
                (i32.const 128))))
          (set_local 5
            (i32.load offset=24
              (get_local 1)))
          (set_local 0
            (i32.const 0))
          (set_local 7
            (i32.add
              (tee_local 4
                (i32.load
                  (i32.add
                    (get_local 1)
                    (i32.const 28))))
              (i32.const 12)))
          (block  ;; label = @25
            (loop  ;; label = @26
              (br_if 1 (;@25;)
                (i32.ge_u
                  (get_local 0)
                  (get_local 9)))
              (br_if 1 (;@25;)
                (i32.lt_u
                  (tee_local 8
                    (i32.add
                      (get_local 0)
                      (i32.const 1)))
                  (get_local 0)))
              (set_local 0
                (get_local 8))
              (br_if 0 (;@26;)
                (i32.eqz
                  (call_indirect (type 0)
                    (get_local 5)
                    (i32.add
                      (get_local 12)
                      (i32.const 76))
                    (get_local 11)
                    (i32.load
                      (get_local 7)))))
              (br 2 (;@24;)))
            (unreachable))
          (br_if 0 (;@26;)
            (call $_ZN4core3fmt9Formatter12pad_integral28_$u7b$$u7b$closure$u7d$$u7d$17hb030538f6c3544b3E
              (i32.add
                (get_local 12)
                (i32.const 64))
              (get_local 1)))
          (br_if 0 (;@26;)
            (call_indirect (type 0)
              (get_local 5)
              (get_local 2)
              (get_local 6)
              (tee_local 1
                (i32.load
                  (i32.add
                    (get_local 4)
                    (i32.const 12))))))
          (set_local 0
            (i32.const 0))
          (loop  ;; label = @27
            (br_if 2 (;@25;)
              (i32.ge_u
                (get_local 0)
                (get_local 3)))
            (br_if 2 (;@25;)
              (i32.lt_u
                (tee_local 8
                  (i32.add
                    (get_local 0)
                    (i32.const 1)))
                (get_local 0)))
            (set_local 0
              (get_local 8))
            (br_if 0 (;@27;)
              (i32.eqz
                (call_indirect (type 0)
                  (get_local 5)
                  (i32.add
                    (get_local 12)
                    (i32.const 76))
                  (get_local 11)
                  (get_local 1))))))
        (set_local 0
          (i32.const 1))
        (br 1 (;@26;)))
      (set_local 0
        (i32.const 0)))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 12)
        (i32.const 80)))
    (get_local 0))
  (func $_ZN4core3fmt9Formatter12pad_integral28_$u7b$$u7b$closure$u7d$$u7d$17hb030538f6c3544b3E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 11
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eq
            (tee_local 2
              (i32.load
                (i32.load
                  (get_local 0))))
            (i32.const 1114112)))
        (set_local 4
          (i32.load
            (i32.add
              (get_local 1)
              (i32.const 28))))
        (set_local 3
          (i32.load offset=24
            (get_local 1)))
        (set_local 7
          (i32.const 0))
        (i32.store offset=12
          (get_local 11)
          (i32.const 0))
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.gt_u
                (get_local 2)
                (i32.const 127)))
            (i32.store8 offset=12
              (get_local 11)
              (get_local 2))
            (set_local 10
              (i32.const 1))
            (br 1 (;@3;)))
          (block  ;; label = @5
            (block  ;; label = @6
              (br_if 0 (;@6;)
                (i32.ge_u
                  (get_local 2)
                  (i32.const 2048)))
              (set_local 10
                (i32.const 2))
              (set_local 9
                (i32.const 1))
              (set_local 8
                (i32.const 192))
              (set_local 6
                (i32.const 31))
              (br 1 (;@5;)))
            (block  ;; label = @7
              (block  ;; label = @8
                (br_if 0 (;@8;)
                  (i32.ge_u
                    (get_local 2)
                    (i32.const 65536)))
                (set_local 10
                  (i32.const 3))
                (set_local 9
                  (i32.const 2))
                (set_local 7
                  (i32.const 1))
                (set_local 8
                  (i32.const 224))
                (set_local 6
                  (i32.const 0))
                (set_local 5
                  (i32.const 15))
                (br 1 (;@7;)))
              (i32.store8 offset=12
                (get_local 11)
                (i32.or
                  (i32.shr_u
                    (get_local 2)
                    (i32.const 18))
                  (i32.const 240)))
              (set_local 10
                (i32.const 4))
              (set_local 9
                (i32.const 3))
              (set_local 7
                (i32.const 2))
              (set_local 8
                (i32.const 128))
              (set_local 6
                (i32.const 1))
              (set_local 5
                (i32.const 63)))
            (i32.store8
              (i32.or
                (i32.add
                  (get_local 11)
                  (i32.const 12))
                (get_local 6))
              (i32.or
                (i32.and
                  (get_local 5)
                  (i32.shr_u
                    (get_local 2)
                    (i32.const 12)))
                (get_local 8)))
            (set_local 8
              (i32.const 128))
            (set_local 6
              (i32.const 63)))
          (i32.store8
            (i32.add
              (i32.add
                (get_local 11)
                (i32.const 12))
              (get_local 7))
            (i32.or
              (i32.and
                (get_local 6)
                (i32.shr_u
                  (get_local 2)
                  (i32.const 6)))
              (get_local 8)))
          (i32.store8
            (i32.add
              (i32.add
                (get_local 11)
                (i32.const 12))
              (get_local 9))
            (i32.or
              (i32.and
                (get_local 2)
                (i32.const 63))
              (i32.const 128))))
        (set_local 2
          (i32.const 1))
        (br_if 1 (;@7;)
          (call_indirect (type 0)
            (get_local 3)
            (i32.add
              (get_local 11)
              (i32.const 12))
            (get_local 10)
            (i32.load offset=12
              (get_local 4)))))
      (block  ;; label = @9
        (br_if 0 (;@9;)
          (i32.eqz
            (i32.load8_u
              (i32.load offset=4
                (get_local 0)))))
        (set_local 2
          (call_indirect (type 0)
            (i32.load offset=24
              (get_local 1))
            (i32.load
              (tee_local 0
                (i32.load offset=8
                  (get_local 0))))
            (i32.load offset=4
              (get_local 0))
            (i32.load offset=12
              (i32.load
                (i32.add
                  (get_local 1)
                  (i32.const 28))))))
        (br 1 (;@8;)))
      (set_local 2
        (i32.const 0)))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 11)
        (i32.const 16)))
    (get_local 2))
  (func $_ZN4core9panicking5panic17h388b19995485ab52E (type 6) (param i32)
    (local i32 i32 i32 i64)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 3
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 32))))
    (set_local 1
      (i32.load
        (i32.add
          (get_local 0)
          (i32.const 12))))
    (set_local 2
      (i32.load offset=8
        (get_local 0)))
    (set_local 4
      (i64.load align=4
        (get_local 0)))
    (i32.store
      (i32.add
        (get_local 3)
        (i32.const 20))
      (i32.const 0))
    (i64.store offset=24
      (get_local 3)
      (get_local 4))
    (i32.store offset=4
      (get_local 3)
      (i32.const 1))
    (i32.store offset=8
      (get_local 3)
      (i32.const 0))
    (i32.store offset=16
      (get_local 3)
      (i32.const 272))
    (i32.store
      (get_local 3)
      (i32.add
        (get_local 3)
        (i32.const 24)))
    (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
      (get_local 3)
      (get_local 2)
      (get_local 1))
    (unreachable))
  (func $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E (type 3) (param i32 i32 i32)
    (unreachable)
    (unreachable))
  (func $_ZN4core9panicking18panic_bounds_check17h5d8a2ea3d49d6e43E (type 1) (param i32 i32)
    (local i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 2
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (i32.store
      (get_local 2)
      (i32.const 0))
    (i32.store offset=4
      (get_local 2)
      (i32.const 0))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 32))
        (i32.const 12))
      (i32.const 1))
    (i32.store offset=36
      (get_local 2)
      (i32.const 1))
    (i32.store offset=40
      (get_local 2)
      (get_local 2))
    (i32.store offset=16
      (get_local 2)
      (i32.const 288))
    (i32.store offset=12
      (get_local 2)
      (i32.const 2))
    (i32.store offset=32
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 4)))
    (i32.store offset=8
      (get_local 2)
      (i32.const 272))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 8))
        (i32.const 12))
      (i32.const 2))
    (i32.store offset=24
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 32)))
    (i32.store
      (i32.add
        (get_local 2)
        (i32.const 28))
      (i32.const 2))
    (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
      (i32.add
        (get_local 2)
        (i32.const 8))
      (get_local 0)
      (get_local 1))
    (unreachable))
  (func $__rust_alloc (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i64)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 6
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 64))))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.lt_u
                (get_local 1)
                (i32.const 5)))
            (i32.store
              (i32.add
                (get_local 6)
                (i32.const 8))
              (i32.const 16))
            (i32.store
              (i32.add
                (get_local 6)
                (i32.const 12))
              (i32.const 50))
            (i64.store
              (get_local 6)
              (i64.const 4294967297))
            (br 1 (;@3;)))
          (block  ;; label = @5
            (block  ;; label = @6
              (block  ;; label = @7
                (block  ;; label = @8
                  (br_if 0 (;@8;)
                    (i32.eqz
                      (get_local 0)))
                  (set_local 5
                    (i32.shr_u
                      (i32.add
                        (get_local 0)
                        (i32.const 3))
                      (i32.const 2)))
                  (br_if 1 (;@7;)
                    (i32.eqz
                      (i32.load offset=516
                        (i32.const 0))))
                  (call $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E
                    (get_local 6)
                    (get_local 5)
                    (i32.const 516))
                  (br_if 2 (;@6;)
                    (i32.eqz
                      (i32.load
                        (get_local 6))))
                  (set_local 3
                    (current_memory))
                  (drop
                    (grow_memory
                      (tee_local 4
                        (i32.shr_u
                          (i32.add
                            (i32.shl
                              (get_local 5)
                              (i32.const 2))
                            (i32.const 65543))
                          (i32.const 16)))))
                  (i32.store
                    (tee_local 3
                      (i32.shl
                        (get_local 3)
                        (i32.const 16)))
                    (i32.add
                      (i32.shl
                        (get_local 4)
                        (i32.const 16))
                      (i32.const -8)))
                  (i32.store offset=4
                    (get_local 3)
                    (i32.const 0))
                  (set_local 4
                    (i32.load offset=516
                      (i32.const 0)))
                  (i32.store offset=516
                    (i32.const 0)
                    (get_local 3))
                  (i32.store offset=4
                    (get_local 3)
                    (get_local 4))
                  (call $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E
                    (i32.add
                      (get_local 6)
                      (i32.const 48))
                    (get_local 5)
                    (i32.const 516))
                  (br 3 (;@5;)))
                (i64.store
                  (get_local 6)
                  (i64.const 4294967296))
                (br 4 (;@4;)))
              (set_local 3
                (current_memory))
              (drop
                (grow_memory
                  (tee_local 4
                    (i32.shr_u
                      (i32.add
                        (i32.shl
                          (get_local 5)
                          (i32.const 2))
                        (i32.const 65543))
                      (i32.const 16)))))
              (i32.store
                (tee_local 3
                  (i32.shl
                    (get_local 3)
                    (i32.const 16)))
                (i32.add
                  (i32.shl
                    (get_local 4)
                    (i32.const 16))
                  (i32.const -8)))
              (i32.store offset=4
                (get_local 3)
                (i32.const 0))
              (set_local 4
                (i32.load offset=516
                  (i32.const 0)))
              (i32.store offset=516
                (i32.const 0)
                (get_local 3))
              (i32.store offset=4
                (get_local 3)
                (get_local 4))
              (call $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E
                (i32.add
                  (get_local 6)
                  (i32.const 48))
                (get_local 5)
                (i32.const 516))
              (br 1 (;@7;)))
            (i32.store offset=52
              (get_local 6)
              (i32.load offset=4
                (get_local 6)))
            (i32.store offset=48
              (get_local 6)
              (i32.const 0)))
          (set_local 5
            (i32.const 1))
          (block  ;; label = @9
            (block  ;; label = @10
              (br_if 0 (;@10;)
                (i32.ne
                  (i32.load offset=48
                    (get_local 6))
                  (i32.const 1)))
              (i32.store
                (i32.add
                  (get_local 6)
                  (i32.const 8))
                (get_local 0))
              (i32.store offset=4
                (get_local 6)
                (i32.const 0))
              (set_local 0
                (i32.const 2))
              (br 1 (;@9;)))
            (set_local 5
              (i32.const 0))
            (set_local 1
              (i32.load offset=52
                (get_local 6)))
            (set_local 0
              (i32.const 0)))
          (i32.store
            (i32.add
              (i32.add
                (get_local 6)
                (i32.shl
                  (get_local 0)
                  (i32.const 2)))
              (i32.const 4))
            (get_local 1))
          (i32.store
            (get_local 6)
            (get_local 5))
          (br_if 1 (;@9;)
            (i32.eqz
              (get_local 5))))
        (i32.store
          (tee_local 1
            (i32.add
              (i32.add
                (get_local 6)
                (i32.const 16))
              (i32.const 8)))
          (i32.load
            (i32.add
              (get_local 6)
              (i32.const 12))))
        (i64.store offset=16
          (get_local 6)
          (i64.load offset=4 align=4
            (get_local 6)))
        (i32.store
          (tee_local 0
            (i32.add
              (i32.add
                (get_local 6)
                (i32.const 32))
              (i32.const 8)))
          (i32.load
            (get_local 1)))
        (i64.store offset=32
          (get_local 6)
          (i64.load offset=16
            (get_local 6)))
        (i32.store
          (i32.add
            (i32.add
              (get_local 6)
              (i32.const 48))
            (i32.const 8))
          (tee_local 1
            (i32.load
              (get_local 0))))
        (i32.store
          (i32.add
            (get_local 2)
            (i32.const 8))
          (get_local 1))
        (i64.store align=4
          (get_local 2)
          (tee_local 7
            (i64.load offset=32
              (get_local 6))))
        (i64.store offset=48
          (get_local 6)
          (get_local 7))
        (set_local 1
          (i32.const 0))
        (br 1 (;@9;)))
      (set_local 1
        (i32.load offset=4
          (get_local 6))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 6)
        (i32.const 64)))
    (get_local 1))
  (func $_ZN11wasm_kernel3ext12wrap_closure7wrapper17h665d645eb5478df8E (type 5) (param i32 i32) (result i32)
    (local i32)
    (set_local 2
      (i32.load align=1
        (get_local 0)))
    (i32.store align=1
      (get_local 0)
      (i32.const 0))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (get_local 2)))
      (return
        (call $_ZN11wasm_kernel3ext17reserve_vec_space17h70eeb56de2cc75b3E
          (get_local 2)
          (get_local 1))))
    (call $_ZN4core9panicking5panic17h388b19995485ab52E
      (i32.const 420))
    (unreachable))
  (func $_ZN11wasm_kernel3ext17reserve_vec_space17h70eeb56de2cc75b3E (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 4
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.le_s
            (get_local 1)
            (i32.const -1)))
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.eqz
                (get_local 1)))
            (i32.store
              (i32.add
                (i32.add
                  (get_local 4)
                  (i32.const 32))
                (i32.const 8))
              (tee_local 3
                (i32.load
                  (i32.add
                    (i32.add
                      (get_local 4)
                      (i32.const 16))
                    (i32.const 8)))))
            (i32.store
              (i32.add
                (get_local 4)
                (i32.const 8))
              (get_local 3))
            (i32.store offset=32
              (get_local 4)
              (tee_local 3
                (i32.load offset=16
                  (get_local 4))))
            (i32.store offset=36
              (get_local 4)
              (tee_local 2
                (i32.load offset=20
                  (get_local 4))))
            (i32.store offset=4
              (get_local 4)
              (get_local 2))
            (i32.store
              (get_local 4)
              (get_local 3))
            (br_if 3 (;@1;)
              (i32.eqz
                (tee_local 3
                  (call $__rust_alloc
                    (get_local 1)
                    (i32.const 1)
                    (get_local 4)))))
            (set_local 3
              (select
                (get_local 3)
                (i32.load
                  (get_local 4))
                (get_local 3)))
            (br 1 (;@3;)))
          (set_local 3
            (i32.const 1)))
        (call $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E
          (get_local 0))
        (i32.store offset=4
          (get_local 0)
          (get_local 1))
        (i32.store
          (get_local 0)
          (get_local 3))
        (i32.store offset=8
          (get_local 0)
          (get_local 1))
        (i32.store offset=4
          (i32.const 0)
          (i32.add
            (get_local 4)
            (i32.const 48)))
        (return
          (get_local 3)))
      (call $_ZN4core9panicking5panic17h388b19995485ab52E
        (i32.const 560))
      (unreachable))
    (unreachable)
    (unreachable))
  (func $_ZN11wasm_kernel3ext12wrap_closure7wrapper17hf46fd30b5b938a9dE (type 5) (param i32 i32) (result i32)
    (local i32)
    (set_local 2
      (i32.load align=1
        (get_local 0)))
    (i32.store align=1
      (get_local 0)
      (i32.const 0))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (get_local 2)))
      (return
        (call $_ZN11wasm_kernel3ext17reserve_vec_space17h70eeb56de2cc75b3E
          (get_local 2)
          (get_local 1))))
    (call $_ZN4core9panicking5panic17h388b19995485ab52E
      (i32.const 420))
    (unreachable))
  (func $rust_begin_unwind (type 2) (param i32 i32 i32 i32)
    (unreachable)
    (unreachable))
  (func $execute_transaction (type 4)
    (local i32 i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 5
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 80))))
    (i32.store offset=56
      (get_local 5)
      (i32.const 0))
    (i64.store offset=48
      (get_local 5)
      (i64.const 1))
    (i32.store offset=64
      (get_local 5)
      (i32.add
        (get_local 5)
        (i32.const 48)))
    (call $args
      (i32.const 2)
      (i32.add
        (get_local 5)
        (i32.const 64)))
    (i32.store
      (tee_local 1
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 64))
          (i32.const 8)))
      (tee_local 3
        (i32.load offset=56
          (get_local 5))))
    (i32.store
      (tee_local 4
        (i32.add
          (get_local 5)
          (i32.const 8)))
      (get_local 3))
    (i32.store offset=64
      (get_local 5)
      (tee_local 3
        (i32.load offset=48
          (get_local 5))))
    (i32.store offset=68
      (get_local 5)
      (tee_local 2
        (i32.load offset=52
          (get_local 5))))
    (i32.store offset=4
      (get_local 5)
      (get_local 2))
    (i32.store
      (get_local 5)
      (get_local 3))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (i32.load
              (get_local 4))))
        (set_local 0
          (i32.load8_u
            (i32.load
              (get_local 5))))
        (i32.store offset=56
          (get_local 5)
          (i32.const 0))
        (i64.store offset=48
          (get_local 5)
          (i64.const 1))
        (i32.store offset=64
          (get_local 5)
          (i32.add
            (get_local 5)
            (i32.const 48)))
        (call $get_storage
          (i32.const 520)
          (i32.const 7)
          (i32.const 3)
          (i32.add
            (get_local 5)
            (i32.const 64)))
        (i32.store
          (get_local 1)
          (tee_local 3
            (i32.load offset=56
              (get_local 5))))
        (i32.store
          (tee_local 4
            (i32.add
              (i32.add
                (get_local 5)
                (i32.const 16))
              (i32.const 8)))
          (get_local 3))
        (i32.store offset=64
          (get_local 5)
          (tee_local 3
            (i32.load offset=48
              (get_local 5))))
        (i32.store offset=68
          (get_local 5)
          (tee_local 2
            (i32.load offset=52
              (get_local 5))))
        (i32.store offset=20
          (get_local 5)
          (get_local 2))
        (i32.store offset=16
          (get_local 5)
          (get_local 3))
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.eqz
                (tee_local 4
                  (i32.load
                    (get_local 4)))))
            (i32.store8
              (tee_local 3
                (i32.load offset=16
                  (get_local 5)))
              (i32.add
                (i32.load8_u
                  (get_local 3))
                (get_local 0)))
            (br 1 (;@3;)))
          (i32.store
            (i32.add
              (i32.add
                (get_local 5)
                (i32.const 64))
              (i32.const 8))
            (tee_local 3
              (i32.load
                (i32.add
                  (i32.add
                    (get_local 5)
                    (i32.const 48))
                  (i32.const 8)))))
          (i32.store
            (i32.add
              (i32.add
                (get_local 5)
                (i32.const 32))
              (i32.const 8))
            (get_local 3))
          (i32.store offset=64
            (get_local 5)
            (tee_local 3
              (i32.load offset=48
                (get_local 5))))
          (i32.store offset=68
            (get_local 5)
            (tee_local 4
              (i32.load offset=52
                (get_local 5))))
          (i32.store offset=36
            (get_local 5)
            (get_local 4))
          (i32.store offset=32
            (get_local 5)
            (get_local 3))
          (set_local 4
            (i32.const 1))
          (br_if 2 (;@2;)
            (i32.eqz
              (tee_local 3
                (call $__rust_alloc
                  (i32.const 1)
                  (i32.const 1)
                  (i32.add
                    (get_local 5)
                    (i32.const 32))))))
          (i32.store8
            (get_local 3)
            (get_local 0))
          (call $_ZN4core3ptr13drop_in_place17h9c8ef66c33a74b86E
            (i32.add
              (get_local 5)
              (i32.const 16)))
          (i32.store
            (i32.add
              (i32.add
                (get_local 5)
                (i32.const 16))
              (i32.const 8))
            (i32.const 1))
          (i32.store offset=20
            (get_local 5)
            (i32.const 1))
          (i32.store offset=16
            (get_local 5)
            (get_local 3)))
        (call $debug
          (get_local 3)
          (get_local 4))
        (call $set_storage
          (i32.const 520)
          (i32.const 7)
          (get_local 3)
          (get_local 4))
        (call $return_data
          (i32.const 1)
          (get_local 3)
          (get_local 4))
        (call $_ZN4core3ptr13drop_in_place17h9c8ef66c33a74b86E
          (i32.add
            (get_local 5)
            (i32.const 16)))
        (call $_ZN4core3ptr13drop_in_place17h9c8ef66c33a74b86E
          (get_local 5))
        (i32.store offset=4
          (i32.const 0)
          (i32.add
            (get_local 5)
            (i32.const 80)))
        (return))
      (call $_ZN4core9panicking18panic_bounds_check17h5d8a2ea3d49d6e43E
        (i32.const 528)
        (i32.const 29))
      (unreachable))
    (unreachable)
    (unreachable))
  (func $_ZN4core3ptr13drop_in_place17h9c8ef66c33a74b86E (type 6) (param i32)
    (call $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E
      (get_local 0)))
  (func $query_state (type 4))
  (func $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E (type 6) (param i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (i32.load offset=4
            (get_local 0))))
      (i32.store
        (i32.add
          (tee_local 0
            (i32.load
              (get_local 0)))
          (i32.const -4))
        (i32.load offset=516
          (i32.const 0)))
      (i32.store offset=516
        (i32.const 0)
        (i32.add
          (get_local 0)
          (i32.const -8)))))
  (func $__wasm_nullptr (type 4)
    (unreachable))
  (table (;0;) 4 4 anyfunc)
  (memory (;0;) 17)
  (export "memory" (memory 0))
  (export "memcpy" (func $memcpy))
  (export "memmove" (func $memmove))
  (export "memset" (func $memset))
  (export "memcmp" (func $memcmp))
  (export "rust_begin_unwind" (func $rust_begin_unwind))
  (export "execute_transaction" (func $execute_transaction))
  (export "query_state" (func $query_state))
  (elem (i32.const 0) $__wasm_nullptr $_ZN4core3fmt3num54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf3fa95afcb7e8063E $_ZN11wasm_kernel3ext12wrap_closure7wrapper17h665d645eb5478df8E $_ZN11wasm_kernel3ext12wrap_closure7wrapper17hf46fd30b5b938a9dE)
  (data (i32.const 4) "\90\02\10\00")
  (data (i32.const 16) "wee_alloc cannot align to more than word alignment")
  (data (i32.const 68) "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
  (data (i32.const 272) "p\01\00\00 \00\00\00\90\01\00\00\12\00\00\00")
  (data (i32.const 288) "\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00")
  (data (i32.const 368) "index out of bounds: the len is ")
  (data (i32.const 400) " but the index is ")
  (data (i32.const 420) "\c0\01\00\00+\00\00\00\f0\01\00\00\11\00\00\00O\01\00\00\15\00\00\00")
  (data (i32.const 448) "called `Option::unwrap()` on a `None` value")
  (data (i32.const 496) "libcore/option.rs")
  (data (i32.const 516) "\00\00\00\00")
  (data (i32.const 520) "counter")
  (data (i32.const 528) "/checkout/src/liballoc/vec.rs")
  (data (i32.const 560) "P\02\00\00\11\00\00\00p\02\00\00\13\00\00\00\ca\02\00\00\09\00\00\00")
  (data (i32.const 592) "capacity overflow")
  (data (i32.const 624) "liballoc/raw_vec.rs"))
