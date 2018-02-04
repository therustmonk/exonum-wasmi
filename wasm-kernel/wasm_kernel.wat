(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (import "env" "args" (func $args (type 2)))
  (import "env" "args_len" (func $args_len (type 3)))
  (import "env" "debug" (func $debug (type 4)))
  (import "env" "get_storage" (func $get_storage (type 5)))
  (import "env" "get_storage_len" (func $get_storage_len (type 1)))
  (import "env" "return_data" (func $return_data (type 4)))
  (import "env" "set_storage" (func $set_storage (type 6)))
  (func $test_print_args (type 7)
    (local i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 1
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (call $_ZN11exowasm_std3ext4args17ha7bd8c1495d145c5E
      (get_local 1))
    (call $debug
      (i32.const 168)
      (i32.const 5))
    (call $debug
      (tee_local 0
        (i32.load
          (get_local 1)))
      (i32.load offset=8
        (get_local 1)))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (i32.load offset=4
            (get_local 1))))
      (i32.store
        (i32.add
          (get_local 0)
          (i32.const -4))
        (i32.load offset=308
          (i32.const 0)))
      (i32.store offset=308
        (i32.const 0)
        (i32.add
          (get_local 0)
          (i32.const -8))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 1)
        (i32.const 16))))
  (func $test_return_args (type 7)
    (local i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 1
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (call $_ZN11exowasm_std3ext4args17ha7bd8c1495d145c5E
      (get_local 1))
    (call $return_data
      (tee_local 0
        (i32.load
          (get_local 1)))
      (i32.load offset=8
        (get_local 1)))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (i32.load offset=4
            (get_local 1))))
      (i32.store
        (i32.add
          (get_local 0)
          (i32.const -4))
        (i32.load offset=308
          (i32.const 0)))
      (i32.store offset=308
        (i32.const 0)
        (i32.add
          (get_local 0)
          (i32.const -8))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 1)
        (i32.const 16))))
  (func $test_set_storage (type 7)
    (local i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 1
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (call $_ZN11exowasm_std3ext4args17ha7bd8c1495d145c5E
      (get_local 1))
    (call $set_storage
      (tee_local 0
        (i32.load
          (get_local 1)))
      (i32.load offset=8
        (get_local 1))
      (i32.const 176)
      (i32.const 13))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (i32.load offset=4
            (get_local 1))))
      (i32.store
        (i32.add
          (get_local 0)
          (i32.const -4))
        (i32.load offset=308
          (i32.const 0)))
      (i32.store offset=308
        (i32.const 0)
        (i32.add
          (get_local 0)
          (i32.const -8))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 1)
        (i32.const 16))))
  (func $test_get_storage (type 7)
    (local i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 1
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 32))))
    (call $_ZN11exowasm_std3ext4args17ha7bd8c1495d145c5E
      (get_local 1))
    (call $_ZN11exowasm_std3ext11get_storage17h53a82f61f62820f8E
      (i32.add
        (get_local 1)
        (i32.const 16))
      (i32.load
        (get_local 1))
      (i32.load offset=8
        (get_local 1)))
    (call $return_data
      (tee_local 0
        (i32.load offset=16
          (get_local 1)))
      (i32.load offset=24
        (get_local 1)))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (i32.load offset=20
            (get_local 1))))
      (i32.store
        (i32.add
          (get_local 0)
          (i32.const -4))
        (i32.load offset=308
          (i32.const 0)))
      (i32.store offset=308
        (i32.const 0)
        (i32.add
          (get_local 0)
          (i32.const -8))))
    (block  ;; label = @2
      (br_if 0 (;@2;)
        (i32.eqz
          (i32.load offset=4
            (get_local 1))))
      (br_if 0 (;@2;)
        (i32.eqz
          (tee_local 0
            (i32.load
              (get_local 1)))))
      (i32.store
        (i32.add
          (get_local 0)
          (i32.const -4))
        (i32.load offset=308
          (i32.const 0)))
      (i32.store offset=308
        (i32.const 0)
        (i32.add
          (get_local 0)
          (i32.const -8))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 1)
        (i32.const 32))))
  (func $test_counter (type 7)
    (local i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 2
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 64))))
    (call $_ZN11exowasm_std3ext11get_storage17h53a82f61f62820f8E
      (get_local 2)
      (i32.const 192)
      (i32.const 7))
    (set_local 1
      (i32.const 1))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (tee_local 0
              (i32.load offset=8
                (get_local 2)))))
        (br_if 1 (;@1;)
          (i32.le_u
            (get_local 0)
            (i32.const 3)))
        (set_local 1
          (i32.add
            (i32.load align=1
              (i32.load
                (get_local 2)))
            (i32.const 1))))
      (i32.store offset=12
        (get_local 2)
        (get_local 1))
      (i32.store
        (i32.add
          (get_local 2)
          (i32.const 44))
        (i32.const 1))
      (i32.store offset=36
        (get_local 2)
        (i32.const 1))
      (i32.store offset=60
        (get_local 2)
        (i32.const 1))
      (i32.store offset=40
        (get_local 2)
        (i32.const 2140))
      (i32.store offset=56
        (get_local 2)
        (i32.add
          (get_local 2)
          (i32.const 12)))
      (i32.store offset=32
        (get_local 2)
        (i32.const 224))
      (i32.store offset=48
        (get_local 2)
        (i32.add
          (get_local 2)
          (i32.const 56)))
      (i32.store
        (i32.add
          (get_local 2)
          (i32.const 52))
        (i32.const 1))
      (call $_ZN5alloc3fmt6format17hef57d46af5b16199E
        (i32.add
          (get_local 2)
          (i32.const 16))
        (i32.add
          (get_local 2)
          (i32.const 32)))
      (call $debug
        (tee_local 1
          (i32.load offset=16
            (get_local 2)))
        (i32.load offset=24
          (get_local 2)))
      (block  ;; label = @3
        (br_if 0 (;@3;)
          (i32.eqz
            (i32.load offset=20
              (get_local 2))))
        (i32.store
          (i32.add
            (get_local 1)
            (i32.const -4))
          (i32.load offset=308
            (i32.const 0)))
        (i32.store offset=308
          (i32.const 0)
          (i32.add
            (get_local 1)
            (i32.const -8))))
      (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17h458ec6e53d321740E
        (i32.add
          (get_local 2)
          (i32.const 32))
        (i32.const 308)
        (i32.const 4)
        (i32.const 1))
      (block  ;; label = @4
        (br_if 0 (;@4;)
          (i32.load offset=32
            (get_local 2)))
        (i32.store align=1
          (tee_local 1
            (i32.load offset=36
              (get_local 2)))
          (i32.const 0))
        (br_if 0 (;@4;)
          (i32.eqz
            (get_local 1)))
        (i32.store align=1
          (get_local 1)
          (i32.load offset=12
            (get_local 2)))
        (call $set_storage
          (i32.const 192)
          (i32.const 7)
          (get_local 1)
          (i32.const 4))
        (i32.store
          (i32.add
            (get_local 1)
            (i32.const -4))
          (i32.load offset=308
            (i32.const 0)))
        (i32.store offset=308
          (i32.const 0)
          (i32.add
            (get_local 1)
            (i32.const -8)))
        (block  ;; label = @5
          (br_if 0 (;@5;)
            (i32.eqz
              (i32.load offset=4
                (get_local 2))))
          (br_if 0 (;@5;)
            (i32.eqz
              (tee_local 1
                (i32.load
                  (get_local 2)))))
          (i32.store
            (i32.add
              (get_local 1)
              (i32.const -4))
            (i32.load offset=308
              (i32.const 0)))
          (i32.store offset=308
            (i32.const 0)
            (i32.add
              (get_local 1)
              (i32.const -8))))
        (i32.store offset=4
          (i32.const 0)
          (i32.add
            (get_local 2)
            (i32.const 64)))
        (return))
      (unreachable)
      (unreachable))
    (call $_ZN4core9panicking5panic17h388b19995485ab52E
      (i32.const 144))
    (unreachable))
  (func $rust_begin_unwind (type 6) (param i32 i32 i32 i32)
    (local i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 4
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 80))))
    (i32.store
      (get_local 4)
      (get_local 2))
    (i32.store offset=4
      (get_local 4)
      (get_local 3))
    (i32.store
      (i32.add
        (i32.add
          (get_local 4)
          (i32.const 48))
        (i32.const 12))
      (i32.const 2))
    (i32.store
      (i32.add
        (i32.add
          (get_local 4)
          (i32.const 48))
        (i32.const 20))
      (i32.const 1))
    (i32.store offset=52
      (get_local 4)
      (i32.const 3))
    (i32.store offset=48
      (get_local 4)
      (get_local 0))
    (i32.store offset=56
      (get_local 4)
      (get_local 1))
    (i32.store offset=64
      (get_local 4)
      (get_local 4))
    (i32.store offset=72
      (get_local 4)
      (i32.add
        (get_local 4)
        (i32.const 4)))
    (i32.store
      (i32.add
        (get_local 4)
        (i32.const 76))
      (i32.const 1))
    (i32.store offset=24
      (get_local 4)
      (i32.const 312))
    (i32.store offset=28
      (get_local 4)
      (i32.const 4))
    (i32.store offset=32
      (get_local 4)
      (i32.const 1300))
    (i32.store
      (i32.add
        (i32.add
          (get_local 4)
          (i32.const 24))
        (i32.const 12))
      (i32.const 4))
    (i32.store offset=40
      (get_local 4)
      (i32.add
        (get_local 4)
        (i32.const 48)))
    (i32.store
      (i32.add
        (i32.add
          (get_local 4)
          (i32.const 24))
        (i32.const 20))
      (i32.const 4))
    (call $_ZN5alloc3fmt6format17hef57d46af5b16199E
      (i32.add
        (get_local 4)
        (i32.const 8))
      (i32.add
        (get_local 4)
        (i32.const 24)))
    (call $debug
      (i32.load offset=8
        (get_local 4))
      (i32.load offset=16
        (get_local 4)))
    (unreachable)
    (unreachable))
  (func $_ZN55_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2ceb0c6a1460bad2E (type 1) (param i32 i32) (result i32)
    (call $_ZN4core3fmt9Formatter3pad17h9aa423b13caa25baE
      (get_local 1)
      (i32.load
        (get_local 0))
      (i32.load offset=4
        (get_local 0))))
  (func $_ZN11exowasm_std3ext4args17ha7bd8c1495d145c5E (type 2) (param i32)
    (local i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 3
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.le_s
          (tee_local 1
            (call $args_len))
          (i32.const -1)))
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.eqz
              (get_local 1)))
          (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17h458ec6e53d321740E
            (get_local 3)
            (i32.const 308)
            (get_local 1)
            (i32.const 1))
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.load
                (get_local 3)))
            (br_if 2 (;@2;)
              (call $memset
                (tee_local 2
                  (i32.load offset=4
                    (get_local 3)))
                (i32.const 0)
                (get_local 1))))
          (unreachable)
          (unreachable))
        (set_local 2
          (i32.const 1)))
      (call $args
        (get_local 2))
      (i32.store offset=4
        (get_local 0)
        (get_local 1))
      (i32.store
        (get_local 0)
        (get_local 2))
      (i32.store offset=8
        (get_local 0)
        (get_local 1))
      (i32.store offset=4
        (i32.const 0)
        (i32.add
          (get_local 3)
          (i32.const 16)))
      (return))
    (call $_ZN4core9panicking5panic17h388b19995485ab52E
      (i32.const 232))
    (unreachable))
  (func $_ZN11exowasm_std3ext11get_storage17h53a82f61f62820f8E (type 5) (param i32 i32 i32)
    (local i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 5
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.le_s
          (tee_local 3
            (call $get_storage_len
              (get_local 1)
              (get_local 2)))
          (i32.const -1)))
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.eqz
              (get_local 3)))
          (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17h458ec6e53d321740E
            (get_local 5)
            (i32.const 308)
            (get_local 3)
            (i32.const 1))
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.load
                (get_local 5)))
            (br_if 2 (;@2;)
              (call $memset
                (tee_local 4
                  (i32.load offset=4
                    (get_local 5)))
                (i32.const 0)
                (get_local 3))))
          (unreachable)
          (unreachable))
        (set_local 4
          (i32.const 1)))
      (call $get_storage
        (get_local 1)
        (get_local 2)
        (get_local 4))
      (i32.store offset=4
        (get_local 0)
        (get_local 3))
      (i32.store
        (get_local 0)
        (get_local 4))
      (i32.store offset=8
        (get_local 0)
        (get_local 3))
      (i32.store offset=4
        (i32.const 0)
        (i32.add
          (get_local 5)
          (i32.const 16)))
      (return))
    (call $_ZN4core9panicking5panic17h388b19995485ab52E
      (i32.const 232))
    (unreachable))
  (func $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17h458ec6e53d321740E (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.lt_u
          (get_local 3)
          (i32.const 5)))
      (i64.store align=4
        (get_local 0)
        (i64.const 4294967297))
      (i32.store
        (i32.add
          (get_local 0)
          (i32.const 8))
        (i32.const 368))
      (i32.store
        (i32.add
          (get_local 0)
          (i32.const 12))
        (i32.const 50))
      (return))
    (block  ;; label = @2
      (block  ;; label = @3
        (block  ;; label = @4
          (block  ;; label = @5
            (block  ;; label = @6
              (block  ;; label = @7
                (block  ;; label = @8
                  (block  ;; label = @9
                    (block  ;; label = @10
                      (block  ;; label = @11
                        (br_if 0 (;@11;)
                          (i32.eqz
                            (get_local 2)))
                        (set_local 4
                          (i32.and
                            (i32.add
                              (get_local 2)
                              (i32.const 3))
                            (i32.const -4)))
                        (br_if 1 (;@10;)
                          (i32.eqz
                            (tee_local 5
                              (i32.load
                                (get_local 1)))))
                        (set_local 7
                          (get_local 1))
                        (loop  ;; label = @12
                          (br_if 4 (;@8;)
                            (i32.ge_u
                              (tee_local 6
                                (i32.load
                                  (get_local 5)))
                              (get_local 4)))
                          (set_local 7
                            (i32.add
                              (get_local 5)
                              (i32.const 4)))
                          (br_if 0 (;@12;)
                            (tee_local 5
                              (i32.load offset=4
                                (get_local 5)))))
                        (set_local 5
                          (current_memory))
                        (drop
                          (grow_memory
                            (tee_local 7
                              (i32.shr_u
                                (i32.add
                                  (get_local 4)
                                  (i32.const 65543))
                                (i32.const 16)))))
                        (i32.store offset=4
                          (tee_local 5
                            (i32.shl
                              (get_local 5)
                              (i32.const 16)))
                          (i32.const 0))
                        (i32.store
                          (get_local 5)
                          (i32.add
                            (i32.shl
                              (get_local 7)
                              (i32.const 16))
                            (i32.const -8)))
                        (i32.store offset=4
                          (get_local 5)
                          (i32.load
                            (get_local 1)))
                        (i32.store
                          (get_local 1)
                          (get_local 5))
                        (br_if 2 (;@10;)
                          (i32.eqz
                            (get_local 5)))
                        (loop  ;; label = @13
                          (br_if 6 (;@7;)
                            (i32.ge_u
                              (tee_local 7
                                (i32.load
                                  (get_local 5)))
                              (get_local 4)))
                          (set_local 1
                            (i32.add
                              (get_local 5)
                              (i32.const 4)))
                          (br_if 0 (;@13;)
                            (tee_local 5
                              (i32.load offset=4
                                (get_local 5))))
                          (br 3 (;@10;)))
                        (unreachable))
                      (i64.store align=4
                        (get_local 0)
                        (i64.const 4294967296))
                      (return))
                    (set_local 7
                      (current_memory))
                    (drop
                      (grow_memory
                        (tee_local 6
                          (i32.shr_u
                            (i32.add
                              (get_local 4)
                              (i32.const 65543))
                            (i32.const 16)))))
                    (i32.store offset=4
                      (tee_local 7
                        (i32.shl
                          (get_local 7)
                          (i32.const 16)))
                      (i32.const 0))
                    (i32.store
                      (get_local 7)
                      (i32.add
                        (i32.shl
                          (get_local 6)
                          (i32.const 16))
                        (i32.const -8)))
                    (i32.store offset=4
                      (get_local 7)
                      (get_local 5))
                    (i32.store
                      (get_local 1)
                      (get_local 7))
                    (br_if 0 (;@13;)
                      (i32.eqz
                        (get_local 7)))
                    (loop  ;; label = @14
                      (br_if 3 (;@11;)
                        (i32.ge_u
                          (tee_local 5
                            (i32.load
                              (get_local 7)))
                          (get_local 4)))
                      (set_local 1
                        (i32.add
                          (get_local 7)
                          (i32.const 4)))
                      (br_if 0 (;@14;)
                        (tee_local 7
                          (i32.load offset=4
                            (get_local 7))))))
                  (i64.store align=4
                    (get_local 0)
                    (i64.const 1))
                  (i32.store
                    (i32.add
                      (get_local 0)
                      (i32.const 8))
                    (get_local 2))
                  (set_local 5
                    (i32.const 2))
                  (br 6 (;@8;)))
                (set_local 3
                  (i32.add
                    (get_local 5)
                    (i32.const 8)))
                (block  ;; label = @15
                  (br_if 0 (;@15;)
                    (i32.gt_u
                      (tee_local 6
                        (i32.sub
                          (get_local 6)
                          (get_local 4)))
                      (i32.const 71)))
                  (i32.store
                    (get_local 7)
                    (i32.load offset=4
                      (get_local 5)))
                  (br 5 (;@10;)))
                (i32.store offset=4
                  (tee_local 1
                    (i32.add
                      (get_local 3)
                      (get_local 4)))
                  (i32.const 0))
                (i32.store
                  (get_local 1)
                  (i32.add
                    (get_local 6)
                    (i32.const -8)))
                (i32.store
                  (get_local 5)
                  (get_local 4))
                (i32.store
                  (get_local 7)
                  (get_local 1))
                (i32.store offset=4
                  (get_local 1)
                  (i32.load offset=4
                    (get_local 5)))
                (br 4 (;@11;)))
              (set_local 3
                (i32.add
                  (get_local 7)
                  (i32.const 8)))
              (br_if 1 (;@14;)
                (i32.gt_u
                  (tee_local 6
                    (i32.sub
                      (get_local 5)
                      (get_local 4)))
                  (i32.const 71)))
              (i32.store
                (get_local 1)
                (i32.load offset=4
                  (get_local 7)))
              (br 3 (;@12;)))
            (set_local 3
              (i32.add
                (get_local 5)
                (i32.const 8)))
            (br_if 1 (;@14;)
              (i32.gt_u
                (tee_local 6
                  (i32.sub
                    (get_local 7)
                    (get_local 4)))
                (i32.const 71)))
            (i32.store
              (get_local 1)
              (i32.load offset=4
                (get_local 5)))
            (br 2 (;@13;)))
          (i32.store offset=4
            (tee_local 5
              (i32.add
                (get_local 3)
                (get_local 4)))
            (i32.const 0))
          (i32.store
            (get_local 5)
            (i32.add
              (get_local 6)
              (i32.const -8)))
          (i32.store
            (get_local 7)
            (get_local 4))
          (i32.store
            (get_local 1)
            (get_local 5))
          (i32.store offset=4
            (get_local 5)
            (i32.load offset=4
              (get_local 7)))
          (br 1 (;@14;)))
        (i32.store offset=4
          (tee_local 7
            (i32.add
              (get_local 3)
              (get_local 4)))
          (i32.const 0))
        (i32.store
          (get_local 7)
          (i32.add
            (get_local 6)
            (i32.const -8)))
        (i32.store
          (get_local 5)
          (get_local 4))
        (i32.store
          (get_local 1)
          (get_local 7))
        (i32.store offset=4
          (get_local 7)
          (i32.load offset=4
            (get_local 5))))
      (set_local 5
        (i32.const 0))
      (i32.store
        (get_local 0)
        (i32.const 0)))
    (i32.store
      (i32.add
        (i32.add
          (get_local 0)
          (i32.shl
            (get_local 5)
            (i32.const 2)))
        (i32.const 4))
      (get_local 3)))
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (get_local 2)))
      (set_local 3
        (get_local 0))
      (loop  ;; label = @2
        (i32.store8
          (get_local 3)
          (i32.load8_u
            (get_local 1)))
        (set_local 1
          (i32.add
            (get_local 1)
            (i32.const 1)))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br_if 0 (;@2;)
          (tee_local 2
            (i32.add
              (get_local 2)
              (i32.const -1))))))
    (get_local 0))
  (func $memmove (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.ge_u
            (get_local 1)
            (get_local 0)))
        (br_if 1 (;@1;)
          (i32.eqz
            (get_local 2)))
        (loop  ;; label = @3
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
          (br_if 0 (;@3;)
            (tee_local 2
              (i32.add
                (get_local 2)
                (i32.const -1))))
          (br 2 (;@1;)))
        (unreachable))
      (br_if 0 (;@3;)
        (i32.eqz
          (get_local 2)))
      (set_local 3
        (get_local 0))
      (loop  ;; label = @4
        (i32.store8
          (get_local 3)
          (i32.load8_u
            (get_local 1)))
        (set_local 1
          (i32.add
            (get_local 1)
            (i32.const 1)))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br_if 0 (;@4;)
          (tee_local 2
            (i32.add
              (get_local 2)
              (i32.const -1))))))
    (get_local 0))
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (get_local 2)))
      (set_local 3
        (get_local 0))
      (loop  ;; label = @2
        (i32.store8
          (get_local 3)
          (get_local 1))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br_if 0 (;@2;)
          (tee_local 2
            (i32.add
              (get_local 2)
              (i32.const -1))))))
    (get_local 0))
  (func $memcmp (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (get_local 2)))
        (set_local 5
          (i32.const 0))
        (loop  ;; label = @3
          (br_if 2 (;@1;)
            (i32.ne
              (tee_local 3
                (i32.load8_u
                  (i32.add
                    (get_local 0)
                    (get_local 5))))
              (tee_local 4
                (i32.load8_u
                  (i32.add
                    (get_local 1)
                    (get_local 5))))))
          (br_if 0 (;@3;)
            (i32.lt_u
              (tee_local 5
                (i32.add
                  (get_local 5)
                  (i32.const 1)))
              (get_local 2))))
        (return
          (i32.const 0)))
      (return
        (i32.const 0)))
    (i32.sub
      (get_local 3)
      (get_local 4)))
  (func $_ZN4core3ptr13drop_in_place17h8866dde8cca892acE (type 2) (param i32))
  (func $_ZN5alloc3fmt6format17hef57d46af5b16199E (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 7
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 80))))
    (set_local 2
      (i32.load
        (get_local 1)))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.eqz
            (tee_local 4
              (i32.shl
                (tee_local 3
                  (i32.load offset=4
                    (get_local 1)))
                (i32.const 3)))))
        (set_local 5
          (i32.add
            (get_local 2)
            (i32.const 4)))
        (set_local 6
          (i32.const 0))
        (loop  ;; label = @3
          (set_local 6
            (i32.add
              (i32.load
                (get_local 5))
              (get_local 6)))
          (set_local 5
            (i32.add
              (get_local 5)
              (i32.const 8)))
          (br_if 0 (;@3;)
            (tee_local 4
              (i32.add
                (get_local 4)
                (i32.const -8))))
          (br 2 (;@1;)))
        (unreachable))
      (set_local 6
        (i32.const 0)))
    (block  ;; label = @4
      (block  ;; label = @5
        (block  ;; label = @6
          (block  ;; label = @7
            (block  ;; label = @8
              (block  ;; label = @9
                (block  ;; label = @10
                  (br_if 0 (;@10;)
                    (i32.eqz
                      (i32.load
                        (i32.add
                          (get_local 1)
                          (i32.const 20)))))
                  (br_if 3 (;@7;)
                    (i32.eqz
                      (get_local 3)))
                  (block  ;; label = @11
                    (block  ;; label = @12
                      (br_if 0 (;@12;)
                        (i32.load offset=4
                          (get_local 2)))
                      (br_if 1 (;@11;)
                        (i32.lt_u
                          (get_local 6)
                          (i32.const 16))))
                    (br_if 2 (;@10;)
                      (i32.ge_u
                        (tee_local 5
                          (i32.add
                            (get_local 6)
                            (get_local 6)))
                        (get_local 6))))
                  (set_local 4
                    (i32.const 1))
                  (set_local 5
                    (i32.const 0))
                  (set_local 6
                    (i32.add
                      (get_local 7)
                      (i32.const 8)))
                  (br 2 (;@10;)))
                (set_local 5
                  (get_local 6)))
              (br_if 2 (;@10;)
                (i32.le_s
                  (get_local 5)
                  (i32.const -1)))
              (set_local 6
                (i32.add
                  (get_local 7)
                  (i32.const 8)))
              (block  ;; label = @13
                (br_if 0 (;@13;)
                  (i32.eqz
                    (get_local 5)))
                (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17h458ec6e53d321740E
                  (i32.add
                    (get_local 7)
                    (i32.const 56))
                  (i32.const 308)
                  (get_local 5)
                  (i32.const 1))
                (br_if 4 (;@9;)
                  (i32.eq
                    (i32.load offset=56
                      (get_local 7))
                    (i32.const 1)))
                (br_if 5 (;@8;)
                  (i32.eqz
                    (tee_local 4
                      (i32.load offset=60
                        (get_local 7)))))
                (set_local 4
                  (select
                    (get_local 4)
                    (get_local 5)
                    (get_local 4)))
                (br 1 (;@12;)))
              (set_local 4
                (i32.const 1))
              (set_local 5
                (i32.const 0)))
            (i32.store offset=12
              (get_local 7)
              (get_local 5))
            (i32.store offset=8
              (get_local 7)
              (get_local 4))
            (i32.store offset=16
              (get_local 7)
              (i32.const 0))
            (i64.store
              (tee_local 5
                (i32.add
                  (i32.add
                    (get_local 7)
                    (i32.const 24))
                  (i32.const 16)))
              (i64.load align=4
                (i32.add
                  (get_local 1)
                  (i32.const 16))))
            (i64.store
              (tee_local 4
                (i32.add
                  (i32.add
                    (get_local 7)
                    (i32.const 24))
                  (i32.const 8)))
              (i64.load align=4
                (i32.add
                  (get_local 1)
                  (i32.const 8))))
            (i64.store offset=24
              (get_local 7)
              (i64.load align=4
                (get_local 1)))
            (i32.store offset=52
              (get_local 7)
              (i32.add
                (get_local 7)
                (i32.const 8)))
            (i64.store
              (i32.add
                (i32.add
                  (get_local 7)
                  (i32.const 56))
                (i32.const 16))
              (i64.load
                (get_local 5)))
            (i64.store
              (tee_local 5
                (i32.add
                  (i32.add
                    (get_local 7)
                    (i32.const 56))
                  (i32.const 8)))
              (i64.load
                (get_local 4)))
            (i64.store offset=56
              (get_local 7)
              (i64.load offset=24
                (get_local 7)))
            (block  ;; label = @14
              (br_if 0 (;@14;)
                (call $_ZN4core3fmt5write17h0d61204d0975bad3E
                  (i32.add
                    (get_local 7)
                    (i32.const 52))
                  (i32.const 420)
                  (i32.add
                    (get_local 7)
                    (i32.const 56))))
              (i32.store
                (get_local 5)
                (tee_local 4
                  (i32.load
                    (i32.add
                      (get_local 6)
                      (i32.const 8)))))
              (i64.store align=4
                (get_local 0)
                (tee_local 8
                  (i64.load align=4
                    (get_local 6))))
              (i32.store
                (i32.add
                  (get_local 0)
                  (i32.const 8))
                (get_local 4))
              (i64.store offset=56
                (get_local 7)
                (get_local 8))
              (i32.store offset=4
                (i32.const 0)
                (i32.add
                  (get_local 7)
                  (i32.const 80)))
              (return))
            (call $_ZN4core6result13unwrap_failed17h575cbe6ecb5ed4e7E)
            (unreachable))
          (call $_ZN4core9panicking18panic_bounds_check17h5d8a2ea3d49d6e43E
            (i32.const 444)
            (i32.const 0)
            (i32.const 0))
          (unreachable))
        (call $_ZN4core9panicking5panic17h388b19995485ab52E
          (i32.const 628))
        (unreachable))
      (i32.store
        (i32.add
          (get_local 7)
          (i32.const 32))
        (i32.load
          (i32.add
            (get_local 7)
            (i32.const 68))))
      (i64.store offset=24
        (get_local 7)
        (i64.load offset=60 align=4
          (get_local 7))))
    (unreachable)
    (unreachable))
  (func $_ZN4core6result13unwrap_failed17h575cbe6ecb5ed4e7E (type 7)
    (local i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 0
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 64))))
    (i32.store offset=12
      (get_local 0)
      (i32.const 51))
    (i32.store offset=8
      (get_local 0)
      (i32.const 464))
    (i32.store
      (i32.add
        (i32.add
          (get_local 0)
          (i32.const 40))
        (i32.const 12))
      (i32.const 4))
    (i32.store offset=44
      (get_local 0)
      (i32.const 5))
    (i32.store offset=48
      (get_local 0)
      (i32.add
        (get_local 0)
        (i32.const 56)))
    (i32.store offset=24
      (get_local 0)
      (i32.const 2240))
    (i32.store offset=20
      (get_local 0)
      (i32.const 2))
    (i32.store offset=40
      (get_local 0)
      (i32.add
        (get_local 0)
        (i32.const 8)))
    (i32.store offset=16
      (get_local 0)
      (i32.const 560))
    (i32.store
      (i32.add
        (i32.add
          (get_local 0)
          (i32.const 16))
        (i32.const 12))
      (i32.const 2))
    (i32.store offset=32
      (get_local 0)
      (i32.add
        (get_local 0)
        (i32.const 40)))
    (i32.store
      (i32.add
        (get_local 0)
        (i32.const 36))
      (i32.const 2))
    (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
      (i32.add
        (get_local 0)
        (i32.const 16))
      (i32.const 576))
    (unreachable))
  (func $_ZN55_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17h92dbaa5dd091f910E (type 1) (param i32 i32) (result i32)
    (call $_ZN4core3fmt9Formatter3pad17h9aa423b13caa25baE
      (get_local 1)
      (i32.load
        (get_local 0))
      (i32.load offset=4
        (get_local 0))))
  (func $_ZN96_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$10write_char17h9757dc18459768ddE (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 8
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (set_local 0
      (i32.load
        (get_local 0)))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.ge_u
                (get_local 1)
                (i32.const 128)))
            (br_if 1 (;@3;)
              (i32.eq
                (tee_local 4
                  (i32.load offset=8
                    (get_local 0)))
                (i32.load offset=4
                  (get_local 0))))
            (br 2 (;@2;)))
          (set_local 4
            (i32.const 0))
          (i32.store offset=12
            (get_local 8)
            (i32.const 0))
          (block  ;; label = @5
            (block  ;; label = @6
              (br_if 0 (;@6;)
                (i32.ge_u
                  (get_local 1)
                  (i32.const 2048)))
              (set_local 7
                (i32.const 2))
              (set_local 6
                (i32.const 1))
              (set_local 5
                (i32.const 192))
              (set_local 3
                (i32.const 31))
              (br 1 (;@5;)))
            (block  ;; label = @7
              (block  ;; label = @8
                (br_if 0 (;@8;)
                  (i32.ge_u
                    (get_local 1)
                    (i32.const 65536)))
                (set_local 7
                  (i32.const 3))
                (set_local 6
                  (i32.const 2))
                (set_local 4
                  (i32.const 1))
                (set_local 5
                  (i32.const 224))
                (set_local 3
                  (i32.const 0))
                (set_local 2
                  (i32.const 15))
                (br 1 (;@7;)))
              (i32.store8 offset=12
                (get_local 8)
                (i32.or
                  (i32.shr_u
                    (get_local 1)
                    (i32.const 18))
                  (i32.const 240)))
              (set_local 7
                (i32.const 4))
              (set_local 6
                (i32.const 3))
              (set_local 4
                (i32.const 2))
              (set_local 5
                (i32.const 128))
              (set_local 3
                (i32.const 1))
              (set_local 2
                (i32.const 63)))
            (i32.store8
              (i32.or
                (i32.add
                  (get_local 8)
                  (i32.const 12))
                (get_local 3))
              (i32.or
                (i32.and
                  (get_local 2)
                  (i32.shr_u
                    (get_local 1)
                    (i32.const 12)))
                (get_local 5)))
            (set_local 5
              (i32.const 128))
            (set_local 3
              (i32.const 63)))
          (i32.store8
            (i32.add
              (i32.add
                (get_local 8)
                (i32.const 12))
              (get_local 4))
            (i32.or
              (i32.and
                (get_local 3)
                (i32.shr_u
                  (get_local 1)
                  (i32.const 6)))
              (get_local 5)))
          (i32.store8
            (i32.add
              (i32.add
                (get_local 8)
                (i32.const 12))
              (get_local 6))
            (i32.or
              (i32.and
                (get_local 1)
                (i32.const 63))
              (i32.const 128)))
          (call $_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$17extend_from_slice17h02027876d1c4e26bE
            (get_local 0)
            (i32.add
              (get_local 8)
              (i32.const 12))
            (get_local 7))
          (br 2 (;@6;)))
        (call $_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$6double17hf5c514db857b9fbfE
          (get_local 0))
        (set_local 4
          (i32.load
            (i32.add
              (get_local 0)
              (i32.const 8)))))
      (i32.store8
        (i32.add
          (i32.load
            (get_local 0))
          (get_local 4))
        (get_local 1))
      (i32.store
        (tee_local 1
          (i32.add
            (get_local 0)
            (i32.const 8)))
        (i32.add
          (i32.load
            (get_local 1))
          (i32.const 1))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 8)
        (i32.const 16)))
    (i32.const 0))
  (func $_ZN96_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_fmt17h73b6f874c56447a3E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 4
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 64))))
    (set_local 0
      (i32.load
        (get_local 0)))
    (i64.store
      (tee_local 2
        (i32.add
          (i32.add
            (get_local 4)
            (i32.const 8))
          (i32.const 16)))
      (i64.load align=4
        (i32.add
          (get_local 1)
          (i32.const 16))))
    (i64.store
      (tee_local 3
        (i32.add
          (i32.add
            (get_local 4)
            (i32.const 8))
          (i32.const 8)))
      (i64.load align=4
        (i32.add
          (get_local 1)
          (i32.const 8))))
    (i64.store offset=8
      (get_local 4)
      (i64.load align=4
        (get_local 1)))
    (i32.store offset=36
      (get_local 4)
      (get_local 0))
    (i64.store
      (i32.add
        (i32.add
          (get_local 4)
          (i32.const 40))
        (i32.const 16))
      (i64.load
        (get_local 2)))
    (i64.store
      (i32.add
        (i32.add
          (get_local 4)
          (i32.const 40))
        (i32.const 8))
      (i64.load
        (get_local 3)))
    (i64.store offset=40
      (get_local 4)
      (i64.load offset=8
        (get_local 4)))
    (set_local 1
      (call $_ZN4core3fmt5write17h0d61204d0975bad3E
        (i32.add
          (get_local 4)
          (i32.const 36))
        (i32.const 420)
        (i32.add
          (get_local 4)
          (i32.const 40))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 4)
        (i32.const 64)))
    (get_local 1))
  (func $_ZN96_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h2be41beb78a77972E (type 0) (param i32 i32 i32) (result i32)
    (call $_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$17extend_from_slice17h02027876d1c4e26bE
      (i32.load
        (get_local 0))
      (get_local 1)
      (get_local 2))
    (i32.const 0))
  (func $_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$17extend_from_slice17h02027876d1c4e26bE (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 9
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 32))))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (block  ;; label = @8
                    (block  ;; label = @9
                      (br_if 0 (;@9;)
                        (i32.ge_u
                          (i32.sub
                            (tee_local 4
                              (i32.load offset=4
                                (get_local 0)))
                            (tee_local 3
                              (i32.load offset=8
                                (get_local 0))))
                          (get_local 2)))
                      (br_if 5 (;@4;)
                        (i32.lt_u
                          (tee_local 5
                            (i32.add
                              (get_local 3)
                              (get_local 2)))
                          (get_local 3)))
                      (br_if 6 (;@3;)
                        (i32.le_s
                          (tee_local 6
                            (select
                              (get_local 5)
                              (tee_local 8
                                (i32.shl
                                  (get_local 4)
                                  (i32.const 1)))
                              (i32.ge_u
                                (get_local 5)
                                (get_local 8))))
                          (i32.const -1)))
                      (br_if 1 (;@8;)
                        (i32.eqz
                          (get_local 4)))
                      (set_local 7
                        (i32.load
                          (get_local 0)))
                      (br_if 2 (;@7;)
                        (i32.ne
                          (get_local 4)
                          (get_local 6)))
                      (set_local 8
                        (get_local 7))
                      (br 3 (;@6;)))
                    (set_local 5
                      (i32.add
                        (get_local 3)
                        (get_local 2)))
                    (set_local 8
                      (i32.load
                        (get_local 0)))
                    (br 3 (;@6;)))
                  (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17h458ec6e53d321740E
                    (get_local 9)
                    (i32.const 308)
                    (get_local 6)
                    (i32.const 1))
                  (br_if 6 (;@3;)
                    (i32.eq
                      (i32.load
                        (get_local 9))
                      (i32.const 1)))
                  (br_if 5 (;@4;)
                    (i32.eqz
                      (tee_local 4
                        (i32.load offset=4
                          (get_local 9)))))
                  (set_local 8
                    (select
                      (get_local 4)
                      (get_local 0)
                      (get_local 4)))
                  (br 1 (;@8;)))
                (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17h458ec6e53d321740E
                  (get_local 9)
                  (i32.const 308)
                  (get_local 6)
                  (i32.const 1))
                (br_if 4 (;@5;)
                  (i32.load
                    (get_local 9)))
                (set_local 4
                  (call $memcpy
                    (tee_local 8
                      (i32.load offset=4
                        (get_local 9)))
                    (get_local 7)
                    (select
                      (get_local 4)
                      (get_local 6)
                      (i32.le_u
                        (get_local 4)
                        (get_local 6)))))
                (i32.store
                  (i32.add
                    (get_local 7)
                    (i32.const -4))
                  (i32.load offset=308
                    (i32.const 0)))
                (i32.store offset=308
                  (i32.const 0)
                  (i32.add
                    (get_local 7)
                    (i32.const -8)))
                (br_if 4 (;@5;)
                  (i32.eqz
                    (get_local 4))))
              (i32.store
                (get_local 0)
                (get_local 8))
              (i32.store
                (i32.add
                  (get_local 0)
                  (i32.const 4))
                (get_local 6)))
            (i32.store
              (i32.add
                (get_local 0)
                (i32.const 8))
              (get_local 5))
            (drop
              (call $memcpy
                (i32.add
                  (get_local 8)
                  (get_local 3))
                (get_local 1)
                (get_local 2)))
            (i32.store offset=4
              (i32.const 0)
              (i32.add
                (get_local 9)
                (i32.const 32)))
            (return))
          (call $_ZN4core6option13expect_failed17h6057b6d59655e712E)
          (unreachable))
        (call $_ZN4core9panicking5panic17h388b19995485ab52E
          (i32.const 628))
        (unreachable))
      (unreachable)
      (unreachable))
    (i32.store
      (i32.add
        (get_local 9)
        (i32.const 24))
      (i32.load
        (i32.add
          (get_local 9)
          (i32.const 12))))
    (i64.store offset=16
      (get_local 9)
      (i64.load offset=4 align=4
        (get_local 9)))
    (unreachable)
    (unreachable))
  (func $_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$6double17hf5c514db857b9fbfE (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i64)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 5
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (block  ;; label = @8
                    (br_if 0 (;@8;)
                      (i32.eqz
                        (tee_local 1
                          (i32.load offset=4
                            (get_local 0)))))
                    (br_if 3 (;@5;)
                      (i32.le_s
                        (tee_local 4
                          (i32.shl
                            (get_local 1)
                            (i32.const 1)))
                        (i32.const -1)))
                    (set_local 2
                      (i32.load
                        (get_local 0)))
                    (br_if 1 (;@7;)
                      (i32.ne
                        (get_local 1)
                        (get_local 4)))
                    (set_local 3
                      (get_local 2))
                    (br 2 (;@6;)))
                  (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17h458ec6e53d321740E
                    (get_local 5)
                    (i32.const 308)
                    (i32.const 4)
                    (i32.const 1))
                  (br_if 4 (;@4;)
                    (i32.eq
                      (i32.load
                        (get_local 5))
                      (i32.const 1)))
                  (br_if 5 (;@3;)
                    (i32.eqz
                      (tee_local 3
                        (i32.load offset=4
                          (get_local 5)))))
                  (set_local 4
                    (i32.const 4))
                  (br 1 (;@7;)))
                (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17h458ec6e53d321740E
                  (get_local 5)
                  (i32.const 308)
                  (get_local 4)
                  (i32.const 1))
                (br_if 2 (;@6;)
                  (i32.load
                    (get_local 5)))
                (set_local 1
                  (call $memcpy
                    (tee_local 3
                      (i32.load offset=4
                        (get_local 5)))
                    (get_local 2)
                    (select
                      (get_local 1)
                      (get_local 4)
                      (i32.le_u
                        (get_local 1)
                        (get_local 4)))))
                (i32.store
                  (i32.add
                    (get_local 2)
                    (i32.const -4))
                  (i32.load offset=308
                    (i32.const 0)))
                (i32.store offset=308
                  (i32.const 0)
                  (i32.add
                    (get_local 2)
                    (i32.const -8)))
                (br_if 2 (;@6;)
                  (i32.eqz
                    (get_local 1))))
              (i32.store
                (get_local 0)
                (get_local 3))
              (i32.store
                (i32.add
                  (get_local 0)
                  (i32.const 4))
                (get_local 4))
              (i32.store offset=4
                (i32.const 0)
                (i32.add
                  (get_local 5)
                  (i32.const 16)))
              (return))
            (call $_ZN4core9panicking5panic17h388b19995485ab52E
              (i32.const 628))
            (unreachable))
          (unreachable)
          (unreachable))
        (set_local 6
          (i64.load
            (i32.add
              (get_local 5)
              (i32.const 8))))
        (set_local 0
          (i32.load offset=4
            (get_local 5)))
        (br 1 (;@7;))))
    (i64.store offset=4 align=4
      (get_local 5)
      (get_local 6))
    (i32.store
      (get_local 5)
      (get_local 0))
    (unreachable)
    (unreachable))
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17headb3a1168984a69E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 5
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (set_local 4
      (i32.const 39))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.lt_u
            (tee_local 0
              (i32.load
                (get_local 0)))
            (i32.const 10000)))
        (set_local 4
          (i32.const 39))
        (loop  ;; label = @3
          (i32.store16 align=1
            (i32.add
              (tee_local 2
                (i32.add
                  (i32.add
                    (get_local 5)
                    (i32.const 9))
                  (get_local 4)))
              (i32.const -2))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.rem_u
                    (tee_local 3
                      (i32.rem_u
                        (get_local 0)
                        (i32.const 10000)))
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 708))))
          (i32.store16 align=1
            (i32.add
              (get_local 2)
              (i32.const -4))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.div_u
                    (get_local 3)
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 708))))
          (set_local 4
            (i32.add
              (get_local 4)
              (i32.const -4)))
          (set_local 2
            (i32.gt_u
              (get_local 0)
              (i32.const 99999999)))
          (set_local 0
            (tee_local 3
              (i32.div_u
                (get_local 0)
                (i32.const 10000))))
          (br_if 0 (;@3;)
            (get_local 2))
          (br 2 (;@1;)))
        (unreachable))
      (set_local 3
        (get_local 0)))
    (block  ;; label = @4
      (br_if 0 (;@4;)
        (i32.lt_s
          (get_local 3)
          (i32.const 100)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (tee_local 4
            (i32.add
              (get_local 4)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (i32.rem_u
                (get_local 3)
                (i32.const 100))
              (i32.const 1))
            (i32.const 708))))
      (set_local 3
        (i32.div_u
          (get_local 3)
          (i32.const 100))))
    (block  ;; label = @5
      (block  ;; label = @6
        (br_if 0 (;@6;)
          (i32.gt_s
            (get_local 3)
            (i32.const 9)))
        (i32.store8
          (i32.add
            (i32.add
              (get_local 5)
              (i32.const 9))
            (tee_local 0
              (i32.add
                (get_local 4)
                (i32.const -1))))
          (i32.add
            (get_local 3)
            (i32.const 48)))
        (br 1 (;@5;)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (tee_local 0
            (i32.add
              (get_local 4)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (get_local 3)
              (i32.const 1))
            (i32.const 708)))))
    (set_local 0
      (call $_ZN4core3fmt9Formatter12pad_integral17h0448a12f34b5832aE
        (get_local 1)
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (get_local 0))
        (i32.sub
          (i32.const 39)
          (get_local 0))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 5)
        (i32.const 48)))
    (get_local 0))
  (func $_ZN4core3fmt3num54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf3fa95afcb7e8063E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 5
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (set_local 4
      (i32.const 39))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.lt_u
            (tee_local 0
              (i32.load
                (get_local 0)))
            (i32.const 10000)))
        (set_local 4
          (i32.const 39))
        (loop  ;; label = @3
          (i32.store16 align=1
            (i32.add
              (tee_local 2
                (i32.add
                  (i32.add
                    (get_local 5)
                    (i32.const 9))
                  (get_local 4)))
              (i32.const -2))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.rem_u
                    (tee_local 3
                      (i32.rem_u
                        (get_local 0)
                        (i32.const 10000)))
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 708))))
          (i32.store16 align=1
            (i32.add
              (get_local 2)
              (i32.const -4))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.div_u
                    (get_local 3)
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 708))))
          (set_local 4
            (i32.add
              (get_local 4)
              (i32.const -4)))
          (set_local 2
            (i32.gt_u
              (get_local 0)
              (i32.const 99999999)))
          (set_local 0
            (tee_local 3
              (i32.div_u
                (get_local 0)
                (i32.const 10000))))
          (br_if 0 (;@3;)
            (get_local 2))
          (br 2 (;@1;)))
        (unreachable))
      (set_local 3
        (get_local 0)))
    (block  ;; label = @4
      (br_if 0 (;@4;)
        (i32.lt_s
          (get_local 3)
          (i32.const 100)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (tee_local 4
            (i32.add
              (get_local 4)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (i32.rem_u
                (get_local 3)
                (i32.const 100))
              (i32.const 1))
            (i32.const 708))))
      (set_local 3
        (i32.div_u
          (get_local 3)
          (i32.const 100))))
    (block  ;; label = @5
      (block  ;; label = @6
        (br_if 0 (;@6;)
          (i32.gt_s
            (get_local 3)
            (i32.const 9)))
        (i32.store8
          (i32.add
            (i32.add
              (get_local 5)
              (i32.const 9))
            (tee_local 0
              (i32.add
                (get_local 4)
                (i32.const -1))))
          (i32.add
            (get_local 3)
            (i32.const 48)))
        (br 1 (;@5;)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (tee_local 0
            (i32.add
              (get_local 4)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (get_local 3)
              (i32.const 1))
            (i32.const 708)))))
    (set_local 0
      (call $_ZN4core3fmt9Formatter12pad_integral17h0448a12f34b5832aE
        (get_local 1)
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (get_local 0))
        (i32.sub
          (i32.const 39)
          (get_local 0))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 5)
        (i32.const 48)))
    (get_local 0))
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he0e855804ed9a1faE (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 5
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (set_local 4
      (i32.const 39))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.lt_u
            (tee_local 0
              (i32.load
                (get_local 0)))
            (i32.const 10000)))
        (set_local 4
          (i32.const 39))
        (loop  ;; label = @3
          (i32.store16 align=1
            (i32.add
              (tee_local 2
                (i32.add
                  (i32.add
                    (get_local 5)
                    (i32.const 9))
                  (get_local 4)))
              (i32.const -2))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.rem_u
                    (tee_local 3
                      (i32.rem_u
                        (get_local 0)
                        (i32.const 10000)))
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 708))))
          (i32.store16 align=1
            (i32.add
              (get_local 2)
              (i32.const -4))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.div_u
                    (get_local 3)
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 708))))
          (set_local 4
            (i32.add
              (get_local 4)
              (i32.const -4)))
          (set_local 2
            (i32.gt_u
              (get_local 0)
              (i32.const 99999999)))
          (set_local 0
            (tee_local 3
              (i32.div_u
                (get_local 0)
                (i32.const 10000))))
          (br_if 0 (;@3;)
            (get_local 2))
          (br 2 (;@1;)))
        (unreachable))
      (set_local 3
        (get_local 0)))
    (block  ;; label = @4
      (br_if 0 (;@4;)
        (i32.lt_s
          (get_local 3)
          (i32.const 100)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (tee_local 4
            (i32.add
              (get_local 4)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (i32.rem_u
                (get_local 3)
                (i32.const 100))
              (i32.const 1))
            (i32.const 708))))
      (set_local 3
        (i32.div_u
          (get_local 3)
          (i32.const 100))))
    (block  ;; label = @5
      (block  ;; label = @6
        (br_if 0 (;@6;)
          (i32.gt_s
            (get_local 3)
            (i32.const 9)))
        (i32.store8
          (i32.add
            (i32.add
              (get_local 5)
              (i32.const 9))
            (tee_local 0
              (i32.add
                (get_local 4)
                (i32.const -1))))
          (i32.add
            (get_local 3)
            (i32.const 48)))
        (br 1 (;@5;)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (tee_local 0
            (i32.add
              (get_local 4)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (get_local 3)
              (i32.const 1))
            (i32.const 708)))))
    (set_local 0
      (call $_ZN4core3fmt9Formatter12pad_integral17h0448a12f34b5832aE
        (get_local 1)
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (get_local 0))
        (i32.sub
          (i32.const 39)
          (get_local 0))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 5)
        (i32.const 48)))
    (get_local 0))
  (func $_ZN4core3fmt10ArgumentV110show_usize17hbb4fe5a23913dc33E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 5
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (set_local 4
      (i32.const 39))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.lt_u
            (tee_local 0
              (i32.load
                (get_local 0)))
            (i32.const 10000)))
        (set_local 4
          (i32.const 39))
        (loop  ;; label = @3
          (i32.store16 align=1
            (i32.add
              (tee_local 2
                (i32.add
                  (i32.add
                    (get_local 5)
                    (i32.const 9))
                  (get_local 4)))
              (i32.const -2))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.rem_u
                    (tee_local 3
                      (i32.rem_u
                        (get_local 0)
                        (i32.const 10000)))
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 708))))
          (i32.store16 align=1
            (i32.add
              (get_local 2)
              (i32.const -4))
            (i32.load16_u
              (i32.add
                (i32.shl
                  (i32.div_u
                    (get_local 3)
                    (i32.const 100))
                  (i32.const 1))
                (i32.const 708))))
          (set_local 4
            (i32.add
              (get_local 4)
              (i32.const -4)))
          (set_local 2
            (i32.gt_u
              (get_local 0)
              (i32.const 99999999)))
          (set_local 0
            (tee_local 3
              (i32.div_u
                (get_local 0)
                (i32.const 10000))))
          (br_if 0 (;@3;)
            (get_local 2))
          (br 2 (;@1;)))
        (unreachable))
      (set_local 3
        (get_local 0)))
    (block  ;; label = @4
      (br_if 0 (;@4;)
        (i32.lt_s
          (get_local 3)
          (i32.const 100)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (tee_local 4
            (i32.add
              (get_local 4)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (i32.rem_u
                (get_local 3)
                (i32.const 100))
              (i32.const 1))
            (i32.const 708))))
      (set_local 3
        (i32.div_u
          (get_local 3)
          (i32.const 100))))
    (block  ;; label = @5
      (block  ;; label = @6
        (br_if 0 (;@6;)
          (i32.gt_s
            (get_local 3)
            (i32.const 9)))
        (i32.store8
          (i32.add
            (i32.add
              (get_local 5)
              (i32.const 9))
            (tee_local 0
              (i32.add
                (get_local 4)
                (i32.const -1))))
          (i32.add
            (get_local 3)
            (i32.const 48)))
        (br 1 (;@5;)))
      (i32.store16 align=1
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (tee_local 0
            (i32.add
              (get_local 4)
              (i32.const -2))))
        (i32.load16_u
          (i32.add
            (i32.shl
              (get_local 3)
              (i32.const 1))
            (i32.const 708)))))
    (set_local 0
      (call $_ZN4core3fmt9Formatter12pad_integral17h0448a12f34b5832aE
        (get_local 1)
        (i32.add
          (i32.add
            (get_local 5)
            (i32.const 9))
          (get_local 0))
        (i32.sub
          (i32.const 39)
          (get_local 0))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 5)
        (i32.const 48)))
    (get_local 0))
  (func $_ZN4core3fmt5write17h0d61204d0975bad3E (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 13
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 64))))
    (i64.store
      (get_local 13)
      (i64.const 137438953472))
    (i32.store offset=8
      (get_local 13)
      (i32.const 0))
    (i32.store offset=16
      (get_local 13)
      (i32.const 0))
    (set_local 5
      (i32.load
        (i32.add
          (get_local 2)
          (i32.const 20))))
    (i32.store8 offset=48
      (get_local 13)
      (i32.const 3))
    (set_local 6
      (i32.load offset=16
        (get_local 2)))
    (i32.store offset=24
      (get_local 13)
      (get_local 0))
    (i32.store
      (tee_local 7
        (i32.add
          (get_local 13)
          (i32.const 28)))
      (get_local 1))
    (i32.store offset=32
      (get_local 13)
      (get_local 6))
    (i32.store
      (tee_local 8
        (i32.add
          (get_local 13)
          (i32.const 36)))
      (i32.add
        (get_local 6)
        (tee_local 0
          (i32.shl
            (get_local 5)
            (i32.const 3)))))
    (i32.store offset=40
      (get_local 13)
      (get_local 6))
    (i32.store
      (tee_local 9
        (i32.add
          (get_local 13)
          (i32.const 44)))
      (get_local 5))
    (i32.store offset=56
      (get_local 13)
      (tee_local 1
        (i32.load
          (get_local 2))))
    (i32.store offset=60
      (get_local 13)
      (tee_local 3
        (i32.add
          (get_local 1)
          (tee_local 4
            (i32.shl
              (i32.load offset=4
                (get_local 2))
              (i32.const 3))))))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (block  ;; label = @8
                    (block  ;; label = @9
                      (br_if 0 (;@9;)
                        (i32.eqz
                          (tee_local 5
                            (i32.load offset=8
                              (get_local 2)))))
                      (set_local 0
                        (i32.add
                          (get_local 5)
                          (i32.const 28)))
                      (set_local 4
                        (i32.add
                          (get_local 5)
                          (i32.mul
                            (i32.load
                              (i32.add
                                (get_local 2)
                                (i32.const 12)))
                            (i32.const 36))))
                      (set_local 2
                        (i32.add
                          (get_local 13)
                          (i32.const 24)))
                      (set_local 10
                        (i32.add
                          (get_local 13)
                          (i32.const 48)))
                      (set_local 11
                        (i32.add
                          (get_local 13)
                          (i32.const 40)))
                      (loop  ;; label = @10
                        (br_if 2 (;@8;)
                          (i32.eq
                            (get_local 5)
                            (get_local 4)))
                        (br_if 4 (;@6;)
                          (i32.eq
                            (tee_local 6
                              (i32.load offset=56
                                (get_local 13)))
                            (get_local 3)))
                        (i32.store offset=56
                          (get_local 13)
                          (tee_local 1
                            (i32.add
                              (get_local 6)
                              (i32.const 8))))
                        (br_if 3 (;@7;)
                          (call_indirect (type 0)
                            (i32.load
                              (get_local 2))
                            (i32.load
                              (get_local 6))
                            (i32.load offset=4
                              (get_local 6))
                            (i32.load offset=12
                              (i32.load
                                (get_local 7)))))
                        (i32.store8
                          (get_local 10)
                          (i32.load8_u
                            (i32.add
                              (get_local 5)
                              (i32.const 32))))
                        (i32.store offset=4
                          (get_local 13)
                          (i32.load offset=8
                            (get_local 5)))
                        (i32.store
                          (get_local 13)
                          (i32.load
                            (i32.add
                              (get_local 5)
                              (i32.const 12))))
                        (set_local 14
                          (i64.const 0))
                        (block  ;; label = @11
                          (block  ;; label = @12
                            (block  ;; label = @13
                              (block  ;; label = @14
                                (block  ;; label = @15
                                  (block  ;; label = @16
                                    (br_if 0 (;@16;)
                                      (i32.eq
                                        (tee_local 6
                                          (i32.load
                                            (i32.add
                                              (get_local 5)
                                              (i32.const 24))))
                                        (i32.const 1)))
                                    (br_if 1 (;@15;)
                                      (i32.eq
                                        (get_local 6)
                                        (i32.const 3)))
                                    (br_if 2 (;@14;)
                                      (i32.ne
                                        (get_local 6)
                                        (i32.const 2)))
                                    (br_if 4 (;@12;)
                                      (i32.eq
                                        (tee_local 12
                                          (i32.load
                                            (tee_local 6
                                              (i32.add
                                                (get_local 13)
                                                (i32.const 32)))))
                                        (i32.load
                                          (get_local 8))))
                                    (i32.store
                                      (get_local 6)
                                      (i32.add
                                        (get_local 12)
                                        (i32.const 8)))
                                    (br_if 5 (;@11;)
                                      (i32.ne
                                        (i32.load offset=4
                                          (get_local 12))
                                        (i32.const 6)))
                                    (set_local 6
                                      (i32.load
                                        (i32.load
                                          (get_local 12))))
                                    (br 3 (;@13;)))
                                  (br_if 13 (;@3;)
                                    (i32.ge_u
                                      (tee_local 12
                                        (i32.load
                                          (get_local 0)))
                                      (tee_local 6
                                        (i32.load
                                          (get_local 9)))))
                                  (br_if 4 (;@12;)
                                    (i32.ne
                                      (i32.load offset=4
                                        (tee_local 12
                                          (i32.add
                                            (i32.load
                                              (get_local 11))
                                            (i32.shl
                                              (get_local 12)
                                              (i32.const 3)))))
                                      (i32.const 6)))
                                  (set_local 6
                                    (i32.load
                                      (i32.load
                                        (get_local 12))))
                                  (br 2 (;@14;)))
                                (br 3 (;@13;)))
                              (set_local 6
                                (i32.load
                                  (get_local 0))))
                            (set_local 14
                              (i64.const 1))
                            (br 1 (;@15;))))
                        (i64.store
                          (i32.add
                            (get_local 13)
                            (i32.const 8))
                          (i64.or
                            (i64.shl
                              (i64.extend_u/i32
                                (get_local 6))
                              (i64.const 32))
                            (get_local 14)))
                        (set_local 14
                          (i64.const 0))
                        (block  ;; label = @17
                          (block  ;; label = @18
                            (block  ;; label = @19
                              (block  ;; label = @20
                                (block  ;; label = @21
                                  (block  ;; label = @22
                                    (br_if 0 (;@22;)
                                      (i32.eq
                                        (tee_local 6
                                          (i32.load
                                            (i32.add
                                              (get_local 5)
                                              (i32.const 16))))
                                        (i32.const 1)))
                                    (br_if 1 (;@21;)
                                      (i32.eq
                                        (get_local 6)
                                        (i32.const 3)))
                                    (br_if 2 (;@20;)
                                      (i32.ne
                                        (get_local 6)
                                        (i32.const 2)))
                                    (br_if 4 (;@18;)
                                      (i32.eq
                                        (tee_local 12
                                          (i32.load
                                            (tee_local 6
                                              (i32.add
                                                (get_local 13)
                                                (i32.const 32)))))
                                        (i32.load
                                          (get_local 8))))
                                    (i32.store
                                      (get_local 6)
                                      (i32.add
                                        (get_local 12)
                                        (i32.const 8)))
                                    (br_if 5 (;@17;)
                                      (i32.ne
                                        (i32.load offset=4
                                          (get_local 12))
                                        (i32.const 6)))
                                    (set_local 6
                                      (i32.load
                                        (i32.load
                                          (get_local 12))))
                                    (br 3 (;@19;)))
                                  (br_if 14 (;@8;)
                                    (i32.ge_u
                                      (tee_local 12
                                        (i32.load
                                          (i32.add
                                            (get_local 0)
                                            (i32.const -8))))
                                      (tee_local 6
                                        (i32.load
                                          (get_local 9)))))
                                  (br_if 4 (;@18;)
                                    (i32.ne
                                      (i32.load offset=4
                                        (tee_local 12
                                          (i32.add
                                            (i32.load
                                              (get_local 11))
                                            (i32.shl
                                              (get_local 12)
                                              (i32.const 3)))))
                                      (i32.const 6)))
                                  (set_local 6
                                    (i32.load
                                      (i32.load
                                        (get_local 12))))
                                  (br 2 (;@20;)))
                                (br 3 (;@19;)))
                              (set_local 6
                                (i32.load
                                  (i32.add
                                    (get_local 0)
                                    (i32.const -8)))))
                            (set_local 14
                              (i64.const 1))
                            (br 1 (;@21;))))
                        (i64.store
                          (i32.add
                            (get_local 13)
                            (i32.const 16))
                          (i64.or
                            (i64.shl
                              (i64.extend_u/i32
                                (get_local 6))
                              (i64.const 32))
                            (get_local 14)))
                        (block  ;; label = @23
                          (block  ;; label = @24
                            (br_if 0 (;@24;)
                              (i32.ne
                                (i32.load
                                  (get_local 5))
                                (i32.const 1)))
                            (br_if 8 (;@16;)
                              (i32.ge_u
                                (tee_local 6
                                  (i32.load
                                    (i32.add
                                      (get_local 0)
                                      (i32.const -24))))
                                (tee_local 12
                                  (i32.load
                                    (get_local 9)))))
                            (set_local 6
                              (i32.add
                                (i32.load
                                  (get_local 11))
                                (i32.shl
                                  (get_local 6)
                                  (i32.const 3))))
                            (br 1 (;@23;)))
                          (br_if 8 (;@16;)
                            (i32.eq
                              (tee_local 6
                                (i32.load
                                  (tee_local 12
                                    (i32.add
                                      (get_local 13)
                                      (i32.const 32)))))
                              (i32.load
                                (get_local 8))))
                          (i32.store
                            (get_local 12)
                            (i32.add
                              (get_local 6)
                              (i32.const 8))))
                        (set_local 5
                          (i32.add
                            (get_local 5)
                            (i32.const 36)))
                        (set_local 0
                          (i32.add
                            (get_local 0)
                            (i32.const 36)))
                        (br_if 0 (;@24;)
                          (i32.eqz
                            (call_indirect (type 1)
                              (i32.load
                                (get_local 6))
                              (get_local 13)
                              (i32.load offset=4
                                (get_local 6)))))
                        (br 3 (;@21;)))
                      (unreachable))
                    (set_local 9
                      (i32.add
                        (get_local 13)
                        (i32.const 24)))
                    (loop  ;; label = @25
                      (br_if 1 (;@24;)
                        (i32.eqz
                          (get_local 0)))
                      (br_if 1 (;@24;)
                        (i32.eqz
                          (get_local 4)))
                      (i32.store offset=56
                        (get_local 13)
                        (tee_local 5
                          (i32.add
                            (get_local 1)
                            (i32.const 8))))
                      (br_if 2 (;@23;)
                        (call_indirect (type 0)
                          (i32.load
                            (get_local 9))
                          (i32.load
                            (get_local 1))
                          (i32.load
                            (i32.add
                              (get_local 1)
                              (i32.const 4)))
                          (i32.load offset=12
                            (i32.load
                              (get_local 7)))))
                      (set_local 0
                        (i32.add
                          (get_local 0)
                          (i32.const -8)))
                      (set_local 4
                        (i32.add
                          (get_local 4)
                          (i32.const -8)))
                      (set_local 2
                        (i32.load
                          (get_local 6)))
                      (set_local 8
                        (i32.load offset=4
                          (get_local 6)))
                      (set_local 1
                        (get_local 5))
                      (set_local 6
                        (i32.add
                          (get_local 6)
                          (i32.const 8)))
                      (br_if 0 (;@25;)
                        (i32.eqz
                          (call_indirect (type 1)
                            (get_local 2)
                            (get_local 13)
                            (get_local 8))))
                      (br 2 (;@23;)))
                    (unreachable))
                  (br_if 1 (;@24;)
                    (i32.eq
                      (get_local 1)
                      (get_local 3)))
                  (i32.store offset=56
                    (get_local 13)
                    (i32.add
                      (get_local 1)
                      (i32.const 8)))
                  (br_if 1 (;@24;)
                    (i32.eqz
                      (call_indirect (type 0)
                        (i32.load
                          (i32.add
                            (get_local 13)
                            (i32.const 24)))
                        (i32.load
                          (get_local 1))
                        (i32.load offset=4
                          (get_local 1))
                        (i32.load offset=12
                          (i32.load
                            (i32.add
                              (get_local 13)
                              (i32.const 28))))))))
                (set_local 5
                  (i32.const 1))
                (br 1 (;@24;)))
              (set_local 5
                (i32.const 0)))
            (i32.store offset=4
              (i32.const 0)
              (i32.add
                (get_local 13)
                (i32.const 64)))
            (return
              (get_local 5)))
          (call $_ZN4core9panicking18panic_bounds_check17h5d8a2ea3d49d6e43E
            (i32.const 952)
            (get_local 6)
            (get_local 12))
          (unreachable))
        (call $_ZN4core9panicking5panic17h388b19995485ab52E
          (i32.const 928))
        (unreachable))
      (call $_ZN4core9panicking18panic_bounds_check17h5d8a2ea3d49d6e43E
        (i32.const 912)
        (get_local 12)
        (get_local 6))
      (unreachable))
    (call $_ZN4core9panicking18panic_bounds_check17h5d8a2ea3d49d6e43E
      (i32.const 912)
      (get_local 12)
      (get_local 6))
    (unreachable))
  (func $_ZN73_$LT$core..fmt..Arguments$LT$$u27$a$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h10aa4a4d757dd8d6E (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 3
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 32))))
    (set_local 2
      (i32.load
        (i32.add
          (get_local 1)
          (i32.const 28))))
    (set_local 1
      (i32.load offset=24
        (get_local 1)))
    (i64.store
      (i32.add
        (i32.add
          (get_local 3)
          (i32.const 8))
        (i32.const 16))
      (i64.load align=4
        (i32.add
          (get_local 0)
          (i32.const 16))))
    (i64.store
      (i32.add
        (i32.add
          (get_local 3)
          (i32.const 8))
        (i32.const 8))
      (i64.load align=4
        (i32.add
          (get_local 0)
          (i32.const 8))))
    (i64.store offset=8
      (get_local 3)
      (i64.load align=4
        (get_local 0)))
    (set_local 0
      (call $_ZN4core3fmt5write17h0d61204d0975bad3E
        (get_local 1)
        (get_local 2)
        (i32.add
          (get_local 3)
          (i32.const 8))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 3)
        (i32.const 32)))
    (get_local 0))
  (func $_ZN4core3fmt9Formatter12pad_integral17h0448a12f34b5832aE (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 15
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (set_local 4
      (select
        (i32.const 43)
        (i32.const 1114112)
        (tee_local 3
          (i32.and
            (tee_local 14
              (i32.load
                (get_local 0)))
            (i32.const 1)))))
    (set_local 5
      (i32.and
        (i32.shr_u
          (get_local 14)
          (i32.const 2))
        (i32.const 1)))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (block  ;; label = @8
                    (block  ;; label = @9
                      (br_if 0 (;@9;)
                        (i32.ne
                          (i32.load offset=8
                            (get_local 0))
                          (i32.const 1)))
                      (br_if 1 (;@8;)
                        (i32.le_u
                          (tee_local 9
                            (i32.load
                              (i32.add
                                (get_local 0)
                                (i32.const 12))))
                          (tee_local 7
                            (i32.add
                              (get_local 3)
                              (get_local 2)))))
                      (br_if 2 (;@7;)
                        (i32.and
                          (get_local 14)
                          (i32.const 8)))
                      (set_local 6
                        (i32.sub
                          (get_local 9)
                          (get_local 7)))
                      (br_if 3 (;@6;)
                        (i32.eq
                          (tee_local 14
                            (i32.and
                              (select
                                (i32.const 1)
                                (tee_local 14
                                  (i32.load8_u offset=48
                                    (get_local 0)))
                                (i32.eq
                                  (get_local 14)
                                  (i32.const 3)))
                              (i32.const 3)))
                          (i32.const 2)))
                      (br_if 4 (;@5;)
                        (i32.eqz
                          (get_local 14)))
                      (set_local 11
                        (get_local 6))
                      (set_local 6
                        (i32.const 0))
                      (br 5 (;@4;)))
                    (block  ;; label = @10
                      (br_if 0 (;@10;)
                        (i32.eqz
                          (get_local 3)))
                      (set_local 9
                        (i32.load
                          (i32.add
                            (get_local 0)
                            (i32.const 28))))
                      (set_local 3
                        (i32.load offset=24
                          (get_local 0)))
                      (i32.store offset=12
                        (get_local 15)
                        (i32.const 0))
                      (i32.store8 offset=12
                        (get_local 15)
                        (get_local 4))
                      (set_local 14
                        (i32.const 1))
                      (br_if 8 (;@2;)
                        (call_indirect (type 0)
                          (get_local 3)
                          (i32.add
                            (get_local 15)
                            (i32.const 12))
                          (i32.const 1)
                          (i32.load offset=12
                            (get_local 9)))))
                    (block  ;; label = @11
                      (br_if 0 (;@11;)
                        (i32.eqz
                          (get_local 5)))
                      (set_local 14
                        (i32.const 1))
                      (br_if 8 (;@3;)
                        (call_indirect (type 0)
                          (i32.load
                            (i32.add
                              (get_local 0)
                              (i32.const 24)))
                          (i32.const 912)
                          (i32.const 0)
                          (i32.load offset=12
                            (i32.load
                              (i32.add
                                (get_local 0)
                                (i32.const 28)))))))
                    (set_local 14
                      (call_indirect (type 0)
                        (i32.load
                          (i32.add
                            (get_local 0)
                            (i32.const 24)))
                        (get_local 1)
                        (get_local 2)
                        (i32.load offset=12
                          (i32.load
                            (i32.add
                              (get_local 0)
                              (i32.const 28))))))
                    (br 7 (;@4;)))
                  (block  ;; label = @12
                    (br_if 0 (;@12;)
                      (i32.eqz
                        (get_local 3)))
                    (set_local 9
                      (i32.load
                        (i32.add
                          (get_local 0)
                          (i32.const 28))))
                    (set_local 3
                      (i32.load offset=24
                        (get_local 0)))
                    (i32.store offset=12
                      (get_local 15)
                      (i32.const 0))
                    (i32.store8 offset=12
                      (get_local 15)
                      (get_local 4))
                    (set_local 14
                      (i32.const 1))
                    (br_if 7 (;@5;)
                      (call_indirect (type 0)
                        (get_local 3)
                        (i32.add
                          (get_local 15)
                          (i32.const 12))
                        (i32.const 1)
                        (i32.load offset=12
                          (get_local 9)))))
                  (block  ;; label = @13
                    (br_if 0 (;@13;)
                      (i32.eqz
                        (get_local 5)))
                    (set_local 14
                      (i32.const 1))
                    (br_if 7 (;@6;)
                      (call_indirect (type 0)
                        (i32.load
                          (i32.add
                            (get_local 0)
                            (i32.const 24)))
                        (i32.const 912)
                        (i32.const 0)
                        (i32.load offset=12
                          (i32.load
                            (i32.add
                              (get_local 0)
                              (i32.const 28)))))))
                  (set_local 14
                    (call_indirect (type 0)
                      (i32.load
                        (i32.add
                          (get_local 0)
                          (i32.const 24)))
                      (get_local 1)
                      (get_local 2)
                      (i32.load offset=12
                        (i32.load
                          (i32.add
                            (get_local 0)
                            (i32.const 28))))))
                  (br 6 (;@7;)))
                (set_local 14
                  (i32.const 1))
                (i32.store8 offset=48
                  (get_local 0)
                  (i32.const 1))
                (i32.store offset=4
                  (get_local 0)
                  (i32.const 48))
                (block  ;; label = @14
                  (br_if 0 (;@14;)
                    (i32.eqz
                      (get_local 3)))
                  (set_local 3
                    (i32.load
                      (i32.add
                        (get_local 0)
                        (i32.const 28))))
                  (set_local 13
                    (i32.load offset=24
                      (get_local 0)))
                  (i32.store offset=12
                    (get_local 15)
                    (i32.const 0))
                  (i32.store8 offset=12
                    (get_local 15)
                    (get_local 4))
                  (br_if 6 (;@8;)
                    (call_indirect (type 0)
                      (get_local 13)
                      (i32.add
                        (get_local 15)
                        (i32.const 12))
                      (i32.const 1)
                      (i32.load offset=12
                        (get_local 3)))))
                (block  ;; label = @15
                  (br_if 0 (;@15;)
                    (i32.eqz
                      (get_local 5)))
                  (br_if 6 (;@9;)
                    (call_indirect (type 0)
                      (i32.load
                        (i32.add
                          (get_local 0)
                          (i32.const 24)))
                      (i32.const 912)
                      (i32.const 0)
                      (i32.load offset=12
                        (i32.load
                          (i32.add
                            (get_local 0)
                            (i32.const 28)))))))
                (set_local 14
                  (i32.const 0))
                (i32.store offset=12
                  (get_local 15)
                  (i32.const 0))
                (i32.store8 offset=12
                  (get_local 15)
                  (i32.const 48))
                (set_local 9
                  (i32.sub
                    (get_local 9)
                    (get_local 7)))
                (set_local 3
                  (i32.load
                    (i32.add
                      (get_local 0)
                      (i32.const 24))))
                (set_local 5
                  (i32.add
                    (tee_local 7
                      (i32.load
                        (i32.add
                          (get_local 0)
                          (i32.const 28))))
                    (i32.const 12)))
                (block  ;; label = @16
                  (loop  ;; label = @17
                    (br_if 1 (;@16;)
                      (i32.ge_u
                        (get_local 14)
                        (get_local 9)))
                    (br_if 1 (;@16;)
                      (i32.lt_u
                        (tee_local 0
                          (i32.add
                            (get_local 14)
                            (i32.const 1)))
                        (get_local 14)))
                    (set_local 14
                      (get_local 0))
                    (br_if 0 (;@17;)
                      (i32.eqz
                        (call_indirect (type 0)
                          (get_local 3)
                          (i32.add
                            (get_local 15)
                            (i32.const 12))
                          (i32.const 1)
                          (i32.load
                            (get_local 5)))))
                    (br 5 (;@12;)))
                  (unreachable))
                (br_if 3 (;@14;)
                  (call_indirect (type 0)
                    (get_local 3)
                    (get_local 1)
                    (get_local 2)
                    (i32.load
                      (i32.add
                        (get_local 7)
                        (i32.const 12)))))
                (set_local 14
                  (i32.const 0))
                (br 5 (;@12;)))
              (set_local 11
                (i32.shr_u
                  (get_local 6)
                  (i32.const 1)))
              (set_local 6
                (i32.shr_u
                  (i32.add
                    (get_local 6)
                    (i32.const 1))
                  (i32.const 1)))
              (br 1 (;@16;)))
            (set_local 11
              (i32.const 0)))
          (set_local 9
            (i32.const 0))
          (i32.store offset=8
            (get_local 15)
            (i32.const 0))
          (block  ;; label = @18
            (block  ;; label = @19
              (br_if 0 (;@19;)
                (i32.gt_u
                  (tee_local 14
                    (i32.load offset=4
                      (get_local 0)))
                  (i32.const 127)))
              (i32.store8 offset=8
                (get_local 15)
                (get_local 14))
              (set_local 13
                (i32.const 1))
              (br 1 (;@18;)))
            (block  ;; label = @20
              (block  ;; label = @21
                (br_if 0 (;@21;)
                  (i32.ge_u
                    (get_local 14)
                    (i32.const 2048)))
                (set_local 13
                  (i32.const 2))
                (set_local 7
                  (i32.const 1))
                (set_local 10
                  (i32.const 192))
                (set_local 8
                  (i32.const 31))
                (br 1 (;@20;)))
              (block  ;; label = @22
                (block  ;; label = @23
                  (br_if 0 (;@23;)
                    (i32.ge_u
                      (get_local 14)
                      (i32.const 65536)))
                  (set_local 13
                    (i32.const 3))
                  (set_local 7
                    (i32.const 2))
                  (set_local 9
                    (i32.const 1))
                  (set_local 10
                    (i32.const 224))
                  (set_local 8
                    (i32.const 0))
                  (set_local 12
                    (i32.const 15))
                  (br 1 (;@22;)))
                (i32.store8 offset=8
                  (get_local 15)
                  (i32.or
                    (i32.shr_u
                      (get_local 14)
                      (i32.const 18))
                    (i32.const 240)))
                (set_local 13
                  (i32.const 4))
                (set_local 7
                  (i32.const 3))
                (set_local 9
                  (i32.const 2))
                (set_local 10
                  (i32.const 128))
                (set_local 8
                  (i32.const 1))
                (set_local 12
                  (i32.const 63)))
              (i32.store8
                (i32.or
                  (i32.add
                    (get_local 15)
                    (i32.const 8))
                  (get_local 8))
                (i32.or
                  (i32.and
                    (get_local 12)
                    (i32.shr_u
                      (get_local 14)
                      (i32.const 12)))
                  (get_local 10)))
              (set_local 10
                (i32.const 128))
              (set_local 8
                (i32.const 63)))
            (i32.store8
              (i32.add
                (i32.add
                  (get_local 15)
                  (i32.const 8))
                (get_local 9))
              (i32.or
                (i32.and
                  (get_local 8)
                  (i32.shr_u
                    (get_local 14)
                    (i32.const 6)))
                (get_local 10)))
            (i32.store8
              (i32.add
                (i32.add
                  (get_local 15)
                  (i32.const 8))
                (get_local 7))
              (i32.or
                (i32.and
                  (get_local 14)
                  (i32.const 63))
                (i32.const 128))))
          (set_local 7
            (i32.load offset=24
              (get_local 0)))
          (set_local 14
            (i32.const 0))
          (set_local 10
            (i32.add
              (tee_local 8
                (i32.load
                  (i32.add
                    (get_local 0)
                    (i32.const 28))))
              (i32.const 12)))
          (block  ;; label = @24
            (loop  ;; label = @25
              (br_if 1 (;@24;)
                (i32.ge_u
                  (get_local 14)
                  (get_local 11)))
              (br_if 1 (;@24;)
                (i32.lt_u
                  (tee_local 9
                    (i32.add
                      (get_local 14)
                      (i32.const 1)))
                  (get_local 14)))
              (set_local 14
                (get_local 9))
              (br_if 0 (;@25;)
                (i32.eqz
                  (call_indirect (type 0)
                    (get_local 7)
                    (i32.add
                      (get_local 15)
                      (i32.const 8))
                    (get_local 13)
                    (i32.load
                      (get_local 10)))))
              (br 2 (;@23;)))
            (unreachable))
          (block  ;; label = @26
            (br_if 0 (;@26;)
              (i32.eqz
                (get_local 3)))
            (set_local 14
              (i32.load
                (i32.add
                  (get_local 0)
                  (i32.const 24))))
            (set_local 9
              (i32.load
                (i32.add
                  (get_local 0)
                  (i32.const 28))))
            (i32.store offset=12
              (get_local 15)
              (i32.const 0))
            (i32.store8 offset=12
              (get_local 15)
              (get_local 4))
            (br_if 1 (;@25;)
              (call_indirect (type 0)
                (get_local 14)
                (i32.add
                  (get_local 15)
                  (i32.const 12))
                (i32.const 1)
                (i32.load offset=12
                  (get_local 9)))))
          (block  ;; label = @27
            (br_if 0 (;@27;)
              (i32.eqz
                (get_local 5)))
            (br_if 1 (;@26;)
              (call_indirect (type 0)
                (i32.load
                  (i32.add
                    (get_local 0)
                    (i32.const 24)))
                (i32.const 912)
                (i32.const 0)
                (i32.load offset=12
                  (i32.load
                    (i32.add
                      (get_local 0)
                      (i32.const 28)))))))
          (br_if 0 (;@27;)
            (call_indirect (type 0)
              (get_local 7)
              (get_local 1)
              (get_local 2)
              (tee_local 9
                (i32.load
                  (i32.add
                    (get_local 8)
                    (i32.const 12))))))
          (set_local 0
            (i32.const 0))
          (loop  ;; label = @28
            (br_if 2 (;@26;)
              (i32.ge_u
                (get_local 0)
                (get_local 6)))
            (br_if 2 (;@26;)
              (i32.lt_u
                (tee_local 14
                  (i32.add
                    (get_local 0)
                    (i32.const 1)))
                (get_local 0)))
            (set_local 0
              (get_local 14))
            (br_if 0 (;@28;)
              (i32.eqz
                (call_indirect (type 0)
                  (get_local 7)
                  (i32.add
                    (get_local 15)
                    (i32.const 8))
                  (get_local 13)
                  (get_local 9))))))
        (set_local 14
          (i32.const 1))
        (br 1 (;@27;)))
      (set_local 14
        (i32.const 0)))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 15)
        (i32.const 16)))
    (get_local 14))
  (func $_ZN4core3fmt9Formatter3pad17h9aa423b13caa25baE (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 12
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 32))))
    (set_local 10
      (i32.load offset=16
        (get_local 0)))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
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
                                        (tee_local 11
                                          (i32.load offset=8
                                            (get_local 0)))
                                        (i32.const 1)))
                                    (br_if 1 (;@15;)
                                      (get_local 10))
                                    (br 10 (;@6;)))
                                  (br_if 1 (;@15;)
                                    (i32.eqz
                                      (get_local 10))))
                                (set_local 10
                                  (i32.load
                                    (i32.add
                                      (get_local 0)
                                      (i32.const 20))))
                                (i32.store offset=12
                                  (get_local 12)
                                  (get_local 1))
                                (i32.store
                                  (i32.add
                                    (get_local 12)
                                    (i32.const 16))
                                  (tee_local 5
                                    (i32.add
                                      (get_local 1)
                                      (get_local 2))))
                                (i32.store offset=8
                                  (get_local 12)
                                  (i32.const 0))
                                (i32.store offset=20
                                  (get_local 12)
                                  (get_local 10))
                                (br_if 1 (;@15;)
                                  (i32.eqz
                                    (get_local 10)))
                                (i32.store
                                  (i32.add
                                    (get_local 12)
                                    (i32.const 20))
                                  (i32.const 0))
                                (call $_ZN75_$LT$$RF$$u27$a$u20$mut$u20$I$u20$as$u20$core..iter..iterator..Iterator$GT$4next17hbdf1d6a8669245deE
                                  (i32.add
                                    (get_local 12)
                                    (i32.const 24))
                                  (i32.add
                                    (get_local 12)
                                    (i32.const 8)))
                                (br_if 7 (;@9;)
                                  (i32.eq
                                    (i32.load offset=28
                                      (get_local 12))
                                    (i32.const 1114112)))
                                (set_local 10
                                  (i32.xor
                                    (get_local 10)
                                    (i32.const -1)))
                                (loop  ;; label = @17
                                  (br_if 3 (;@14;)
                                    (i32.eqz
                                      (tee_local 10
                                        (i32.add
                                          (get_local 10)
                                          (i32.const 1)))))
                                  (call $_ZN75_$LT$$RF$$u27$a$u20$mut$u20$I$u20$as$u20$core..iter..iterator..Iterator$GT$4next17hbdf1d6a8669245deE
                                    (i32.add
                                      (get_local 12)
                                      (i32.const 24))
                                    (i32.add
                                      (get_local 12)
                                      (i32.const 8)))
                                  (br_if 0 (;@17;)
                                    (i32.ne
                                      (i32.load offset=28
                                        (get_local 12))
                                      (i32.const 1114112)))
                                  (br 8 (;@9;)))
                                (unreachable))
                              (set_local 10
                                (call_indirect (type 0)
                                  (i32.load offset=24
                                    (get_local 0))
                                  (get_local 1)
                                  (get_local 2)
                                  (i32.load offset=12
                                    (i32.load
                                      (i32.add
                                        (get_local 0)
                                        (i32.const 28))))))
                              (br 11 (;@6;)))
                            (br_if 4 (;@13;)
                              (i32.eqz
                                (get_local 2)))
                            (i32.store offset=12
                              (get_local 12)
                              (tee_local 10
                                (i32.add
                                  (get_local 1)
                                  (i32.const 1))))
                            (br_if 3 (;@14;)
                              (i32.gt_s
                                (tee_local 9
                                  (i32.load8_s
                                    (get_local 1)))
                                (i32.const -1)))
                            (br_if 1 (;@16;)
                              (i32.ne
                                (get_local 2)
                                (i32.const 1)))
                            (set_local 3
                              (i32.const 0))
                            (set_local 6
                              (get_local 5))
                            (br 2 (;@15;)))
                          (block  ;; label = @18
                            (br_if 0 (;@18;)
                              (i32.eqz
                                (tee_local 10
                                  (i32.load offset=24
                                    (get_local 12)))))
                            (br_if 0 (;@18;)
                              (i32.eq
                                (get_local 10)
                                (get_local 2)))
                            (br_if 11 (;@7;)
                              (i32.ge_u
                                (get_local 10)
                                (get_local 2)))
                            (br_if 11 (;@7;)
                              (i32.le_s
                                (i32.load8_s
                                  (i32.add
                                    (get_local 1)
                                    (get_local 10)))
                                (i32.const -65)))
                            (set_local 2
                              (get_local 10))
                            (br_if 6 (;@12;)
                              (get_local 11))
                            (br 7 (;@11;)))
                          (set_local 2
                            (get_local 10))
                          (br_if 5 (;@13;)
                            (get_local 11))
                          (br 6 (;@12;)))
                        (i32.store offset=12
                          (get_local 12)
                          (tee_local 10
                            (i32.add
                              (get_local 1)
                              (i32.const 2))))
                        (set_local 3
                          (i32.and
                            (i32.load8_u
                              (i32.add
                                (get_local 1)
                                (i32.const 1)))
                            (i32.const 63)))
                        (set_local 6
                          (get_local 10)))
                      (br_if 0 (;@18;)
                        (i32.lt_u
                          (i32.and
                            (get_local 9)
                            (i32.const 255))
                          (i32.const 224)))
                      (block  ;; label = @19
                        (block  ;; label = @20
                          (br_if 0 (;@20;)
                            (i32.eq
                              (get_local 6)
                              (get_local 5)))
                          (i32.store offset=12
                            (get_local 12)
                            (tee_local 10
                              (i32.add
                                (get_local 6)
                                (i32.const 1))))
                          (set_local 4
                            (i32.and
                              (i32.load8_u
                                (get_local 6))
                              (i32.const 63)))
                          (set_local 6
                            (get_local 10))
                          (br 1 (;@19;)))
                        (set_local 4
                          (i32.const 0))
                        (set_local 6
                          (get_local 5)))
                      (br_if 0 (;@20;)
                        (i32.lt_u
                          (i32.and
                            (get_local 9)
                            (i32.const 255))
                          (i32.const 240)))
                      (set_local 9
                        (i32.and
                          (get_local 9)
                          (i32.const 31)))
                      (set_local 3
                        (i32.or
                          (i32.and
                            (get_local 4)
                            (i32.const 255))
                          (i32.shl
                            (i32.and
                              (get_local 3)
                              (i32.const 255))
                            (i32.const 6))))
                      (block  ;; label = @21
                        (block  ;; label = @22
                          (br_if 0 (;@22;)
                            (i32.eq
                              (get_local 6)
                              (get_local 5)))
                          (i32.store offset=12
                            (get_local 12)
                            (tee_local 10
                              (i32.add
                                (get_local 6)
                                (i32.const 1))))
                          (set_local 5
                            (i32.and
                              (i32.load8_u
                                (get_local 6))
                              (i32.const 63)))
                          (br 1 (;@21;)))
                        (set_local 5
                          (i32.const 0)))
                      (br_if 2 (;@20;)
                        (i32.eq
                          (i32.or
                            (i32.or
                              (i32.shl
                                (get_local 3)
                                (i32.const 6))
                              (i32.and
                                (i32.shl
                                  (get_local 9)
                                  (i32.const 18))
                                (i32.const 1835008)))
                            (i32.and
                              (get_local 5)
                              (i32.const 255)))
                          (i32.const 1114112))))
                    (i32.store offset=8
                      (get_local 12)
                      (i32.sub
                        (get_local 10)
                        (get_local 1))))
                  (set_local 2
                    (i32.const 0)))
                (br_if 1 (;@21;)
                  (i32.eqz
                    (get_local 11))))
              (set_local 9
                (i32.load
                  (i32.add
                    (get_local 0)
                    (i32.const 12))))
              (br_if 1 (;@21;)
                (i32.eqz
                  (get_local 2)))
              (set_local 5
                (i32.add
                  (get_local 1)
                  (get_local 2)))
              (set_local 11
                (i32.const 0))
              (set_local 10
                (get_local 1))
              (loop  ;; label = @23
                (set_local 11
                  (i32.add
                    (i32.eq
                      (i32.and
                        (i32.load8_u
                          (get_local 10))
                        (i32.const 192))
                      (i32.const 128))
                    (get_local 11)))
                (br_if 0 (;@23;)
                  (i32.ne
                    (get_local 5)
                    (tee_local 10
                      (i32.add
                        (get_local 10)
                        (i32.const 1)))))
                (br 3 (;@20;)))
              (unreachable))
            (set_local 10
              (call_indirect (type 0)
                (i32.load offset=24
                  (get_local 0))
                (get_local 1)
                (get_local 2)
                (i32.load offset=12
                  (i32.load
                    (i32.add
                      (get_local 0)
                      (i32.const 28))))))
            (br 2 (;@21;)))
          (set_local 11
            (i32.const 0)))
        (block  ;; label = @24
          (block  ;; label = @25
            (block  ;; label = @26
              (block  ;; label = @27
                (br_if 0 (;@27;)
                  (i32.ge_u
                    (i32.sub
                      (get_local 2)
                      (get_local 11))
                    (get_local 9)))
                (set_local 11
                  (i32.const 0))
                (block  ;; label = @28
                  (br_if 0 (;@28;)
                    (i32.eqz
                      (get_local 2)))
                  (set_local 5
                    (i32.add
                      (get_local 1)
                      (get_local 2)))
                  (set_local 11
                    (i32.const 0))
                  (set_local 10
                    (get_local 1))
                  (loop  ;; label = @29
                    (set_local 11
                      (i32.add
                        (i32.eq
                          (i32.and
                            (i32.load8_u
                              (get_local 10))
                            (i32.const 192))
                          (i32.const 128))
                        (get_local 11)))
                    (br_if 0 (;@29;)
                      (i32.ne
                        (get_local 5)
                        (tee_local 10
                          (i32.add
                            (get_local 10)
                            (i32.const 1)))))))
                (set_local 3
                  (i32.add
                    (i32.sub
                      (get_local 11)
                      (get_local 2))
                    (get_local 9)))
                (br_if 1 (;@28;)
                  (i32.eq
                    (tee_local 10
                      (i32.and
                        (select
                          (i32.const 0)
                          (tee_local 10
                            (i32.load8_u offset=48
                              (get_local 0)))
                          (i32.eq
                            (get_local 10)
                            (i32.const 3)))
                        (i32.const 3)))
                    (i32.const 2)))
                (br_if 2 (;@27;)
                  (i32.eqz
                    (get_local 10)))
                (set_local 6
                  (get_local 3))
                (set_local 3
                  (i32.const 0))
                (br 3 (;@26;)))
              (set_local 10
                (call_indirect (type 0)
                  (i32.load offset=24
                    (get_local 0))
                  (get_local 1)
                  (get_local 2)
                  (i32.load offset=12
                    (i32.load
                      (i32.add
                        (get_local 0)
                        (i32.const 28))))))
              (br 3 (;@26;)))
            (set_local 6
              (i32.shr_u
                (get_local 3)
                (i32.const 1)))
            (set_local 3
              (i32.shr_u
                (i32.add
                  (get_local 3)
                  (i32.const 1))
                (i32.const 1)))
            (br 1 (;@28;)))
          (set_local 6
            (i32.const 0)))
        (set_local 11
          (i32.const 0))
        (i32.store offset=8
          (get_local 12)
          (i32.const 0))
        (block  ;; label = @30
          (block  ;; label = @31
            (br_if 0 (;@31;)
              (i32.gt_u
                (tee_local 10
                  (i32.load offset=4
                    (get_local 0)))
                (i32.const 127)))
            (i32.store8 offset=8
              (get_local 12)
              (get_local 10))
            (set_local 9
              (i32.const 1))
            (br 1 (;@30;)))
          (block  ;; label = @32
            (block  ;; label = @33
              (br_if 0 (;@33;)
                (i32.ge_u
                  (get_local 10)
                  (i32.const 2048)))
              (set_local 9
                (i32.const 2))
              (set_local 8
                (i32.const 1))
              (set_local 5
                (i32.const 192))
              (set_local 4
                (i32.const 31))
              (br 1 (;@32;)))
            (block  ;; label = @34
              (block  ;; label = @35
                (br_if 0 (;@35;)
                  (i32.ge_u
                    (get_local 10)
                    (i32.const 65536)))
                (set_local 9
                  (i32.const 3))
                (set_local 8
                  (i32.const 2))
                (set_local 11
                  (i32.const 1))
                (set_local 5
                  (i32.const 224))
                (set_local 4
                  (i32.const 0))
                (set_local 7
                  (i32.const 15))
                (br 1 (;@34;)))
              (i32.store8 offset=8
                (get_local 12)
                (i32.or
                  (i32.shr_u
                    (get_local 10)
                    (i32.const 18))
                  (i32.const 240)))
              (set_local 9
                (i32.const 4))
              (set_local 8
                (i32.const 3))
              (set_local 11
                (i32.const 2))
              (set_local 5
                (i32.const 128))
              (set_local 4
                (i32.const 1))
              (set_local 7
                (i32.const 63)))
            (i32.store8
              (i32.or
                (i32.add
                  (get_local 12)
                  (i32.const 8))
                (get_local 4))
              (i32.or
                (i32.and
                  (get_local 7)
                  (i32.shr_u
                    (get_local 10)
                    (i32.const 12)))
                (get_local 5)))
            (set_local 5
              (i32.const 128))
            (set_local 4
              (i32.const 63)))
          (i32.store8
            (i32.add
              (i32.add
                (get_local 12)
                (i32.const 8))
              (get_local 11))
            (i32.or
              (i32.and
                (get_local 4)
                (i32.shr_u
                  (get_local 10)
                  (i32.const 6)))
              (get_local 5)))
          (i32.store8
            (i32.add
              (i32.add
                (get_local 12)
                (i32.const 8))
              (get_local 8))
            (i32.or
              (i32.and
                (get_local 10)
                (i32.const 63))
              (i32.const 128))))
        (set_local 5
          (i32.load offset=24
            (get_local 0)))
        (set_local 10
          (i32.const 0))
        (set_local 0
          (i32.add
            (tee_local 4
              (i32.load
                (i32.add
                  (get_local 0)
                  (i32.const 28))))
            (i32.const 12)))
        (block  ;; label = @36
          (block  ;; label = @37
            (block  ;; label = @38
              (loop  ;; label = @39
                (br_if 1 (;@38;)
                  (i32.ge_u
                    (get_local 10)
                    (get_local 6)))
                (br_if 1 (;@38;)
                  (i32.lt_u
                    (tee_local 11
                      (i32.add
                        (get_local 10)
                        (i32.const 1)))
                    (get_local 10)))
                (set_local 10
                  (get_local 11))
                (br_if 0 (;@39;)
                  (i32.eqz
                    (call_indirect (type 0)
                      (get_local 5)
                      (i32.add
                        (get_local 12)
                        (i32.const 8))
                      (get_local 9)
                      (i32.load
                        (get_local 0)))))
                (br 2 (;@37;)))
              (unreachable))
            (br_if 0 (;@39;)
              (call_indirect (type 0)
                (get_local 5)
                (get_local 1)
                (get_local 2)
                (tee_local 0
                  (i32.load
                    (i32.add
                      (get_local 4)
                      (i32.const 12))))))
            (set_local 10
              (i32.const 0))
            (loop  ;; label = @40
              (br_if 2 (;@38;)
                (i32.ge_u
                  (get_local 10)
                  (get_local 3)))
              (br_if 2 (;@38;)
                (i32.lt_u
                  (tee_local 11
                    (i32.add
                      (get_local 10)
                      (i32.const 1)))
                  (get_local 10)))
              (set_local 10
                (get_local 11))
              (br_if 0 (;@40;)
                (i32.eqz
                  (call_indirect (type 0)
                    (get_local 5)
                    (i32.add
                      (get_local 12)
                      (i32.const 8))
                    (get_local 9)
                    (get_local 0))))))
          (set_local 10
            (i32.const 1))
          (br 1 (;@39;)))
        (set_local 10
          (i32.const 0)))
      (i32.store offset=4
        (i32.const 0)
        (i32.add
          (get_local 12)
          (i32.const 32)))
      (return
        (get_local 10)))
    (call $_ZN4core3str16slice_error_fail17h0272e9dec3021bceE
      (get_local 1)
      (get_local 2)
      (i32.const 0)
      (get_local 10))
    (unreachable))
  (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1d76b7570b573baeE (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    (set_local 6
      (i32.const 1))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (call_indirect (type 1)
          (tee_local 2
            (i32.load offset=24
              (get_local 1)))
          (i32.const 39)
          (tee_local 3
            (i32.load offset=16
              (i32.load
                (i32.add
                  (get_local 1)
                  (i32.const 28)))))))
      (set_local 6
        (i32.const 2))
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (block  ;; label = @8
                    (block  ;; label = @9
                      (block  ;; label = @10
                        (br_if 0 (;@10;)
                          (i32.gt_u
                            (tee_local 0
                              (i32.add
                                (tee_local 1
                                  (i32.load
                                    (get_local 0)))
                                (i32.const -9)))
                            (i32.const 30)))
                        (set_local 5
                          (i32.const 116))
                        (block  ;; label = @11
                          (br_table 9 (;@2;) 0 (;@11;) 2 (;@9;) 2 (;@9;) 3 (;@8;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 6 (;@5;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 2 (;@9;) 6 (;@5;) 9 (;@2;)
                            (get_local 0)))
                        (set_local 5
                          (i32.const 110))
                        (br 8 (;@3;)))
                      (br_if 4 (;@7;)
                        (i32.eq
                          (get_local 1)
                          (i32.const 92))))
                    (br_if 1 (;@10;)
                      (i32.gt_u
                        (get_local 1)
                        (i32.const 65535)))
                    (br_if 2 (;@9;)
                      (call $_ZN4core12char_private5check17h25b77805391c8205E
                        (get_local 1)
                        (i32.const 2512)
                        (i32.const 41)
                        (i32.const 2608)
                        (i32.const 304)
                        (i32.const 2912)
                        (i32.const 326)))
                    (br 4 (;@7;)))
                  (set_local 5
                    (i32.const 114))
                  (br 5 (;@6;)))
                (block  ;; label = @12
                  (br_if 0 (;@12;)
                    (i32.ge_u
                      (get_local 1)
                      (i32.const 131072)))
                  (br_if 1 (;@11;)
                    (call $_ZN4core12char_private5check17h25b77805391c8205E
                      (get_local 1)
                      (i32.const 3248)
                      (i32.const 33)
                      (i32.const 3328)
                      (i32.const 150)
                      (i32.const 3488)
                      (i32.const 360)))
                  (br 3 (;@9;)))
                (br_if 2 (;@10;)
                  (i32.lt_u
                    (i32.add
                      (get_local 1)
                      (i32.const -918000))
                    (i32.const 196112)))
                (br_if 2 (;@10;)
                  (i32.eqz
                    (i32.and
                      (i32.gt_u
                        (i32.add
                          (get_local 1)
                          (i32.const -195102))
                        (i32.const 722657))
                      (i32.and
                        (i32.gt_u
                          (i32.add
                            (get_local 1)
                            (i32.const -191457))
                          (i32.const 3102))
                        (i32.and
                          (i32.gt_u
                            (i32.add
                              (get_local 1)
                              (i32.const -183970))
                            (i32.const 13))
                          (i32.and
                            (i32.ne
                              (i32.and
                                (get_local 1)
                                (i32.const 2097150))
                              (i32.const 178206))
                            (i32.and
                              (i32.gt_u
                                (i32.add
                                  (get_local 1)
                                  (i32.const -173783))
                                (i32.const 40))
                              (i32.gt_u
                                (i32.add
                                  (get_local 1)
                                  (i32.const -177973))
                                (i32.const 10))))))))))
              (set_local 6
                (i32.const 1)))
            (br 1 (;@11;)))
          (set_local 9
            (i64.or
              (i64.extend_u/i32
                (i32.xor
                  (i32.shr_u
                    (i32.clz
                      (i32.or
                        (get_local 1)
                        (i32.const 1)))
                    (i32.const 2))
                  (i32.const 7)))
              (i64.const 21474836480)))
          (set_local 6
            (i32.const 3)))
        (set_local 5
          (get_local 1)))
      (set_local 1
        (i32.wrap/i64
          (i64.shr_u
            (get_local 9)
            (i64.const 32))))
      (set_local 7
        (i32.wrap/i64
          (get_local 9)))
      (block  ;; label = @13
        (block  ;; label = @14
          (loop  ;; label = @15
            (set_local 0
              (get_local 1))
            (block  ;; label = @16
              (block  ;; label = @17
                (block  ;; label = @18
                  (block  ;; label = @19
                    (block  ;; label = @20
                      (block  ;; label = @21
                        (br_if 0 (;@21;)
                          (i32.eq
                            (tee_local 1
                              (i32.and
                                (get_local 6)
                                (i32.const 3)))
                            (i32.const 1)))
                        (br_if 1 (;@20;)
                          (i32.eq
                            (get_local 1)
                            (i32.const 2)))
                        (br_if 8 (;@13;)
                          (i32.ne
                            (get_local 1)
                            (i32.const 3)))
                        (set_local 1
                          (i32.const 4))
                        (br_if 8 (;@13;)
                          (i32.gt_u
                            (tee_local 4
                              (i32.add
                                (i32.and
                                  (get_local 0)
                                  (i32.const 7))
                                (i32.const -1)))
                            (i32.const 4)))
                        (set_local 8
                          (i32.const 92))
                        (block  ;; label = @22
                          (br_table 0 (;@22;) 4 (;@18;) 5 (;@17;) 6 (;@16;) 3 (;@19;) 0 (;@22;)
                            (get_local 4)))
                        (set_local 1
                          (i32.const 0))
                        (br_if 6 (;@16;)
                          (i32.eqz
                            (call_indirect (type 1)
                              (get_local 2)
                              (i32.const 125)
                              (get_local 3))))
                        (br 7 (;@15;)))
                      (set_local 6
                        (i32.const 0))
                      (set_local 1
                        (get_local 0))
                      (br_if 5 (;@17;)
                        (i32.eqz
                          (call_indirect (type 1)
                            (get_local 2)
                            (get_local 5)
                            (get_local 3))))
                      (br 6 (;@16;)))
                    (set_local 8
                      (i32.const 92))
                    (set_local 6
                      (i32.const 1))
                    (set_local 1
                      (get_local 0)))
                  (br_if 3 (;@19;)
                    (i32.eqz
                      (call_indirect (type 1)
                        (get_local 2)
                        (get_local 8)
                        (get_local 3))))
                  (br 4 (;@18;)))
                (set_local 1
                  (select
                    (get_local 0)
                    (i32.const 1)
                    (get_local 7)))
                (set_local 0
                  (i32.shl
                    (get_local 7)
                    (i32.const 2)))
                (set_local 7
                  (select
                    (i32.add
                      (get_local 7)
                      (i32.const -1))
                    (i32.const 0)
                    (get_local 7)))
                (br_if 2 (;@20;)
                  (i32.eqz
                    (call_indirect (type 1)
                      (get_local 2)
                      (i32.add
                        (select
                          (i32.const 48)
                          (i32.const 87)
                          (i32.lt_u
                            (tee_local 0
                              (i32.and
                                (i32.shr_u
                                  (get_local 5)
                                  (i32.and
                                    (get_local 0)
                                    (i32.const 28)))
                                (i32.const 15)))
                            (i32.const 10)))
                        (get_local 0))
                      (get_local 3))))
                (br 3 (;@19;)))
              (set_local 1
                (i32.const 2))
              (br_if 1 (;@21;)
                (i32.eqz
                  (call_indirect (type 1)
                    (get_local 2)
                    (i32.const 123)
                    (get_local 3))))
              (br 2 (;@20;)))
            (set_local 1
              (i32.const 3))
            (br_if 0 (;@22;)
              (i32.eqz
                (call_indirect (type 1)
                  (get_local 2)
                  (i32.const 117)
                  (get_local 3))))))
        (return
          (i32.const 1)))
      (set_local 6
        (call_indirect (type 1)
          (get_local 2)
          (i32.const 39)
          (get_local 3))))
    (get_local 6))
  (func $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f588df9817810faE (type 1) (param i32 i32) (result i32)
    (call_indirect (type 0)
      (i32.load offset=24
        (get_local 1))
      (i32.const 1088)
      (i32.const 5)
      (i32.load offset=12
        (i32.load
          (i32.add
            (get_local 1)
            (i32.const 28))))))
  (func $_ZN55_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6d0c5b884d1c1f3aE (type 1) (param i32 i32) (result i32)
    (call $_ZN4core3fmt9Formatter3pad17h9aa423b13caa25baE
      (get_local 1)
      (i32.load
        (get_local 0))
      (i32.load offset=4
        (get_local 0))))
  (func $_ZN75_$LT$$RF$$u27$a$u20$mut$u20$I$u20$as$u20$core..iter..iterator..Iterator$GT$4next17hbdf1d6a8669245deE (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    (set_local 9
      (i32.const 1114112))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eq
          (tee_local 3
            (i32.load offset=4
              (get_local 1)))
          (tee_local 2
            (i32.load
              (i32.add
                (get_local 1)
                (i32.const 8))))))
      (i32.store
        (i32.add
          (get_local 1)
          (i32.const 4))
        (tee_local 7
          (i32.add
            (get_local 3)
            (i32.const 1))))
      (br_if 0 (;@1;)
        (i32.eqz
          (get_local 3)))
      (set_local 8
        (i32.const 0))
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.lt_s
              (tee_local 9
                (i32.load8_s
                  (get_local 3)))
              (i32.const 0)))
          (set_local 8
            (i32.and
              (get_local 9)
              (i32.const 255)))
          (br 1 (;@2;)))
        (block  ;; label = @4
          (block  ;; label = @5
            (br_if 0 (;@5;)
              (i32.eq
                (get_local 7)
                (get_local 2)))
            (i32.store
              (i32.add
                (get_local 1)
                (i32.const 4))
              (tee_local 7
                (i32.add
                  (get_local 3)
                  (i32.const 2))))
            (set_local 8
              (i32.and
                (i32.load8_u
                  (i32.add
                    (get_local 3)
                    (i32.const 1)))
                (i32.const 63)))
            (set_local 5
              (get_local 7))
            (br 1 (;@4;)))
          (set_local 5
            (get_local 2)))
        (set_local 4
          (i32.and
            (get_local 9)
            (i32.const 31)))
        (set_local 8
          (i32.and
            (get_local 8)
            (i32.const 255)))
        (block  ;; label = @6
          (block  ;; label = @7
            (block  ;; label = @8
              (br_if 0 (;@8;)
                (i32.lt_u
                  (i32.and
                    (get_local 9)
                    (i32.const 255))
                  (i32.const 224)))
              (br_if 1 (;@7;)
                (i32.eq
                  (get_local 5)
                  (get_local 2)))
              (i32.store
                (i32.add
                  (get_local 1)
                  (i32.const 4))
                (tee_local 7
                  (i32.add
                    (get_local 5)
                    (i32.const 1))))
              (set_local 6
                (i32.and
                  (i32.load8_u
                    (get_local 5))
                  (i32.const 63)))
              (set_local 5
                (get_local 7))
              (br 2 (;@6;)))
            (set_local 8
              (i32.or
                (get_local 8)
                (i32.shl
                  (get_local 4)
                  (i32.const 6))))
            (br 2 (;@6;)))
          (set_local 6
            (i32.const 0))
          (set_local 5
            (get_local 2)))
        (set_local 8
          (i32.or
            (i32.and
              (get_local 6)
              (i32.const 255))
            (i32.shl
              (get_local 8)
              (i32.const 6))))
        (block  ;; label = @9
          (block  ;; label = @10
            (block  ;; label = @11
              (br_if 0 (;@11;)
                (i32.lt_u
                  (i32.and
                    (get_local 9)
                    (i32.const 255))
                  (i32.const 240)))
              (br_if 1 (;@10;)
                (i32.eq
                  (get_local 5)
                  (get_local 2)))
              (i32.store
                (i32.add
                  (get_local 1)
                  (i32.const 4))
                (tee_local 7
                  (i32.add
                    (get_local 5)
                    (i32.const 1))))
              (set_local 5
                (i32.and
                  (i32.load8_u
                    (get_local 5))
                  (i32.const 63)))
              (br 2 (;@9;)))
            (set_local 8
              (i32.or
                (get_local 8)
                (i32.shl
                  (get_local 4)
                  (i32.const 12))))
            (br 2 (;@9;)))
          (set_local 5
            (i32.const 0)))
        (set_local 9
          (i32.const 1114112))
        (br_if 1 (;@10;)
          (i32.eq
            (tee_local 8
              (i32.or
                (i32.or
                  (i32.shl
                    (get_local 8)
                    (i32.const 6))
                  (i32.and
                    (i32.shl
                      (get_local 4)
                      (i32.const 18))
                    (i32.const 1835008)))
                (i32.and
                  (get_local 5)
                  (i32.const 255))))
            (i32.const 1114112))))
      (i32.store
        (get_local 0)
        (tee_local 9
          (i32.load
            (get_local 1))))
      (i32.store
        (get_local 1)
        (i32.add
          (i32.sub
            (i32.add
              (get_local 9)
              (i32.sub
                (get_local 2)
                (get_local 3)))
            (get_local 2))
          (get_local 7)))
      (set_local 9
        (get_local 8)))
    (i32.store offset=4
      (get_local 0)
      (get_local 9)))
  (func $_ZN4core3str16slice_error_fail17h0272e9dec3021bceE (type 6) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 9
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 112))))
    (i32.store offset=8
      (get_local 9)
      (get_local 2))
    (i32.store offset=12
      (get_local 9)
      (get_local 3))
    (set_local 7
      (i32.const 0))
    (set_local 6
      (get_local 1))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.lt_u
          (get_local 1)
          (i32.const 257)))
      (set_local 4
        (i32.sub
          (i32.const 0)
          (get_local 1)))
      (set_local 8
        (i32.const 256))
      (block  ;; label = @2
        (loop  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.ge_u
                (get_local 8)
                (get_local 1)))
            (br_if 2 (;@2;)
              (i32.gt_s
                (i32.load8_s
                  (i32.add
                    (get_local 0)
                    (get_local 8)))
                (i32.const -65))))
          (set_local 6
            (i32.add
              (get_local 8)
              (i32.const -1)))
          (set_local 7
            (i32.const 1))
          (br_if 2 (;@2;)
            (i32.eq
              (get_local 8)
              (i32.const 1)))
          (set_local 5
            (i32.add
              (get_local 4)
              (get_local 8)))
          (set_local 8
            (get_local 6))
          (br_if 0 (;@4;)
            (i32.ne
              (get_local 5)
              (i32.const 1)))
          (br 2 (;@2;)))
        (unreachable))
      (set_local 7
        (i32.const 1))
      (set_local 6
        (get_local 8)))
    (i32.store offset=20
      (get_local 9)
      (get_local 6))
    (i32.store offset=16
      (get_local 9)
      (get_local 0))
    (i32.store offset=28
      (get_local 9)
      (select
        (i32.const 5)
        (i32.const 0)
        (get_local 7)))
    (i32.store offset=24
      (get_local 9)
      (select
        (i32.const 1104)
        (i32.const 1120)
        (get_local 7)))
    (block  ;; label = @5
      (block  ;; label = @6
        (block  ;; label = @7
          (block  ;; label = @8
            (br_if 0 (;@8;)
              (tee_local 8
                (i32.gt_u
                  (get_local 2)
                  (get_local 1))))
            (br_if 0 (;@8;)
              (i32.gt_u
                (get_local 3)
                (get_local 1)))
            (br_if 1 (;@7;)
              (i32.gt_u
                (get_local 2)
                (get_local 3)))
            (block  ;; label = @9
              (block  ;; label = @10
                (br_if 0 (;@10;)
                  (i32.eqz
                    (get_local 2)))
                (br_if 0 (;@10;)
                  (i32.eq
                    (get_local 2)
                    (get_local 1)))
                (br_if 1 (;@9;)
                  (i32.ge_u
                    (get_local 2)
                    (get_local 1)))
                (br_if 1 (;@9;)
                  (i32.lt_s
                    (i32.load8_s
                      (i32.add
                        (get_local 0)
                        (get_local 2)))
                    (i32.const -64))))
              (set_local 2
                (get_local 3)))
            (i32.store offset=32
              (get_local 9)
              (get_local 2))
            (br_if 2 (;@8;)
              (i32.eqz
                (get_local 2)))
            (br_if 2 (;@8;)
              (i32.eq
                (get_local 2)
                (get_local 1)))
            (set_local 5
              (i32.add
                (get_local 1)
                (i32.const 1)))
            (block  ;; label = @11
              (loop  ;; label = @12
                (block  ;; label = @13
                  (br_if 0 (;@13;)
                    (i32.ge_u
                      (get_local 2)
                      (get_local 1)))
                  (br_if 2 (;@11;)
                    (i32.gt_s
                      (i32.load8_s
                        (tee_local 6
                          (i32.add
                            (get_local 0)
                            (get_local 2))))
                      (i32.const -65))))
                (block  ;; label = @14
                  (set_local 8
                    (i32.add
                      (get_local 2)
                      (i32.const -1)))
                  (br_if 0 (;@14;)
                    (i32.eq
                      (get_local 2)
                      (i32.const 1)))
                  (set_local 6
                    (i32.eq
                      (get_local 5)
                      (get_local 2)))
                  (set_local 2
                    (get_local 8))
                  (br_if 1 (;@13;)
                    (i32.eqz
                      (get_local 6)))))
              (set_local 6
                (i32.add
                  (get_local 0)
                  (get_local 8)))
              (br 4 (;@10;)))
            (set_local 8
              (get_local 2))
            (br 3 (;@11;)))
          (i32.store offset=40
            (get_local 9)
            (select
              (get_local 2)
              (get_local 3)
              (get_local 8)))
          (i32.store
            (i32.add
              (i32.add
                (get_local 9)
                (i32.const 72))
              (i32.const 12))
            (i32.const 7))
          (i32.store
            (i32.add
              (i32.add
                (get_local 9)
                (i32.const 72))
              (i32.const 20))
            (i32.const 7))
          (i32.store offset=76
            (get_local 9)
            (i32.const 8))
          (i32.store offset=52
            (get_local 9)
            (i32.const 3))
          (i32.store offset=80
            (get_local 9)
            (i32.add
              (get_local 9)
              (i32.const 16)))
          (i32.store offset=56
            (get_local 9)
            (i32.const 1144))
          (i32.store offset=72
            (get_local 9)
            (i32.add
              (get_local 9)
              (i32.const 40)))
          (i32.store offset=48
            (get_local 9)
            (i32.const 1120))
          (i32.store offset=88
            (get_local 9)
            (i32.add
              (get_local 9)
              (i32.const 24)))
          (i32.store
            (i32.add
              (i32.add
                (get_local 9)
                (i32.const 48))
              (i32.const 12))
            (i32.const 3))
          (i32.store offset=64
            (get_local 9)
            (i32.add
              (get_local 9)
              (i32.const 72)))
          (i32.store
            (i32.add
              (i32.add
                (get_local 9)
                (i32.const 48))
              (i32.const 20))
            (i32.const 3))
          (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
            (i32.add
              (get_local 9)
              (i32.const 48))
            (i32.const 1252))
          (unreachable))
        (i32.store
          (i32.add
            (i32.add
              (get_local 9)
              (i32.const 72))
            (i32.const 12))
          (i32.const 8))
        (i32.store
          (i32.add
            (i32.add
              (get_local 9)
              (i32.const 72))
            (i32.const 20))
          (i32.const 7))
        (i32.store offset=76
          (get_local 9)
          (i32.const 8))
        (i32.store offset=72
          (get_local 9)
          (i32.add
            (get_local 9)
            (i32.const 8)))
        (i32.store offset=80
          (get_local 9)
          (i32.add
            (get_local 9)
            (i32.const 12)))
        (i32.store offset=88
          (get_local 9)
          (i32.add
            (get_local 9)
            (i32.const 16)))
        (i32.store offset=96
          (get_local 9)
          (i32.add
            (get_local 9)
            (i32.const 24)))
        (i32.store
          (i32.add
            (get_local 9)
            (i32.const 100))
          (i32.const 7))
        (i32.store offset=48
          (get_local 9)
          (i32.const 1268))
        (i32.store offset=52
          (get_local 9)
          (i32.const 4))
        (i32.store offset=56
          (get_local 9)
          (i32.const 1300))
        (i32.store
          (i32.add
            (i32.add
              (get_local 9)
              (i32.const 48))
            (i32.const 12))
          (i32.const 4))
        (i32.store offset=64
          (get_local 9)
          (i32.add
            (get_local 9)
            (i32.const 72)))
        (i32.store
          (i32.add
            (i32.add
              (get_local 9)
              (i32.const 48))
            (i32.const 20))
          (i32.const 4))
        (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
          (i32.add
            (get_local 9)
            (i32.const 48))
          (i32.const 1444))
        (unreachable))
      (set_local 6
        (i32.add
          (get_local 0)
          (tee_local 8
            (get_local 2)))))
    (block  ;; label = @15
      (br_if 0 (;@15;)
        (tee_local 0
          (i32.eq
            (get_local 6)
            (tee_local 2
              (i32.add
                (tee_local 5
                  (i32.add
                    (get_local 0)
                    (get_local 8)))
                (i32.sub
                  (get_local 1)
                  (get_local 8)))))))
      (set_local 7
        (i32.const 0))
      (block  ;; label = @16
        (block  ;; label = @17
          (br_if 0 (;@17;)
            (i32.lt_s
              (tee_local 1
                (i32.load8_s
                  (get_local 6)))
              (i32.const 0)))
          (set_local 2
            (i32.and
              (get_local 1)
              (i32.const 255)))
          (br 1 (;@16;)))
        (set_local 4
          (get_local 2))
        (block  ;; label = @18
          (br_if 0 (;@18;)
            (i32.eq
              (tee_local 6
                (select
                  (get_local 6)
                  (i32.add
                    (get_local 5)
                    (i32.const 1))
                  (get_local 0)))
              (get_local 2)))
          (set_local 4
            (i32.add
              (get_local 6)
              (i32.const 1)))
          (set_local 7
            (i32.and
              (i32.load8_u
                (get_local 6))
              (i32.const 63))))
        (set_local 6
          (i32.and
            (get_local 1)
            (i32.const 31)))
        (set_local 5
          (i32.and
            (get_local 7)
            (i32.const 255)))
        (block  ;; label = @19
          (block  ;; label = @20
            (br_if 0 (;@20;)
              (i32.lt_u
                (i32.and
                  (get_local 1)
                  (i32.const 255))
                (i32.const 224)))
            (set_local 0
              (i32.const 0))
            (set_local 7
              (get_local 2))
            (block  ;; label = @21
              (br_if 0 (;@21;)
                (i32.eq
                  (get_local 4)
                  (get_local 2)))
              (set_local 7
                (i32.add
                  (get_local 4)
                  (i32.const 1)))
              (set_local 0
                (i32.and
                  (i32.load8_u
                    (get_local 4))
                  (i32.const 63))))
            (set_local 5
              (i32.or
                (i32.and
                  (get_local 0)
                  (i32.const 255))
                (i32.shl
                  (get_local 5)
                  (i32.const 6))))
            (br_if 1 (;@20;)
              (i32.lt_u
                (i32.and
                  (get_local 1)
                  (i32.const 255))
                (i32.const 240)))
            (set_local 1
              (i32.const 0))
            (block  ;; label = @22
              (br_if 0 (;@22;)
                (i32.eq
                  (get_local 7)
                  (get_local 2)))
              (set_local 1
                (i32.and
                  (i32.load8_u
                    (get_local 7))
                  (i32.const 63))))
            (br_if 2 (;@20;)
              (i32.ne
                (tee_local 2
                  (i32.or
                    (i32.or
                      (i32.shl
                        (get_local 5)
                        (i32.const 6))
                      (i32.and
                        (i32.shl
                          (get_local 6)
                          (i32.const 18))
                        (i32.const 1835008)))
                    (i32.and
                      (get_local 1)
                      (i32.const 255))))
                (i32.const 1114112)))
            (br 3 (;@19;)))
          (set_local 2
            (i32.or
              (get_local 5)
              (i32.shl
                (get_local 6)
                (i32.const 6))))
          (br 1 (;@21;)))
        (set_local 2
          (i32.or
            (get_local 5)
            (i32.shl
              (get_local 6)
              (i32.const 12)))))
      (i32.store offset=36
        (get_local 9)
        (get_local 2))
      (set_local 6
        (i32.const 1))
      (block  ;; label = @23
        (br_if 0 (;@23;)
          (i32.lt_u
            (get_local 2)
            (i32.const 128)))
        (set_local 6
          (i32.const 2))
        (br_if 0 (;@23;)
          (i32.lt_u
            (get_local 2)
            (i32.const 2048)))
        (set_local 6
          (select
            (i32.const 3)
            (i32.const 4)
            (i32.lt_u
              (get_local 2)
              (i32.const 65536)))))
      (i32.store offset=40
        (get_local 9)
        (get_local 8))
      (i32.store offset=44
        (get_local 9)
        (i32.add
          (get_local 6)
          (get_local 8)))
      (i32.store
        (i32.add
          (i32.add
            (get_local 9)
            (i32.const 72))
          (i32.const 12))
        (i32.const 9))
      (i32.store
        (i32.add
          (i32.add
            (get_local 9)
            (i32.const 72))
          (i32.const 20))
        (i32.const 10))
      (i32.store offset=76
        (get_local 9)
        (i32.const 8))
      (i32.store offset=72
        (get_local 9)
        (i32.add
          (get_local 9)
          (i32.const 32)))
      (i32.store offset=80
        (get_local 9)
        (i32.add
          (get_local 9)
          (i32.const 36)))
      (i32.store offset=88
        (get_local 9)
        (i32.add
          (get_local 9)
          (i32.const 40)))
      (i32.store offset=96
        (get_local 9)
        (i32.add
          (get_local 9)
          (i32.const 16)))
      (i32.store
        (i32.add
          (get_local 9)
          (i32.const 100))
        (i32.const 7))
      (i32.store offset=104
        (get_local 9)
        (i32.add
          (get_local 9)
          (i32.const 24)))
      (i32.store
        (i32.add
          (get_local 9)
          (i32.const 108))
        (i32.const 7))
      (i32.store offset=48
        (get_local 9)
        (i32.const 1484))
      (i32.store offset=52
        (get_local 9)
        (i32.const 5))
      (i32.store offset=56
        (get_local 9)
        (i32.const 1524))
      (i32.store
        (i32.add
          (i32.add
            (get_local 9)
            (i32.const 48))
          (i32.const 12))
        (i32.const 5))
      (i32.store offset=64
        (get_local 9)
        (i32.add
          (get_local 9)
          (i32.const 72)))
      (i32.store
        (i32.add
          (i32.add
            (get_local 9)
            (i32.const 48))
          (i32.const 20))
        (i32.const 5))
      (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
        (i32.add
          (get_local 9)
          (i32.const 48))
        (i32.const 1704))
      (unreachable))
    (call $_ZN4core9panicking5panic17h388b19995485ab52E
      (i32.const 1460))
    (unreachable))
  (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4ea32a9382c97361E (type 1) (param i32 i32) (result i32)
    (local i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 2
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 8))
        (i32.const 12))
      (i32.const 11))
    (i32.store offset=12
      (get_local 2)
      (i32.const 11))
    (i32.store offset=8
      (get_local 2)
      (get_local 0))
    (i32.store offset=16
      (get_local 2)
      (i32.add
        (get_local 0)
        (i32.const 4)))
    (set_local 0
      (i32.load
        (i32.add
          (get_local 1)
          (i32.const 28))))
    (set_local 1
      (i32.load offset=24
        (get_local 1)))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 24))
        (i32.const 12))
      (i32.const 2))
    (i32.store
      (i32.add
        (get_local 2)
        (i32.const 44))
      (i32.const 2))
    (i32.store offset=28
      (get_local 2)
      (i32.const 2))
    (i32.store offset=24
      (get_local 2)
      (i32.const 2036))
    (i32.store offset=32
      (get_local 2)
      (i32.const 2240))
    (i32.store offset=40
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 8)))
    (set_local 1
      (call $_ZN4core3fmt5write17h0d61204d0975bad3E
        (get_local 1)
        (get_local 0)
        (i32.add
          (get_local 2)
          (i32.const 24))))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 2)
        (i32.const 48)))
    (get_local 1))
  (func $_ZN4core9panicking5panic17h388b19995485ab52E (type 2) (param i32)
    (local i32 i64 i64 i64)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 1
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (set_local 2
      (i64.load offset=16 align=4
        (get_local 0)))
    (set_local 3
      (i64.load offset=8 align=4
        (get_local 0)))
    (set_local 4
      (i64.load align=4
        (get_local 0)))
    (i32.store
      (i32.add
        (get_local 1)
        (i32.const 20))
      (i32.const 0))
    (i64.store offset=24
      (get_local 1)
      (get_local 4))
    (i32.store offset=4
      (get_local 1)
      (i32.const 1))
    (i32.store offset=8
      (get_local 1)
      (i32.const 0))
    (i32.store offset=16
      (get_local 1)
      (i32.const 2064))
    (i32.store
      (get_local 1)
      (i32.add
        (get_local 1)
        (i32.const 24)))
    (i64.store offset=32
      (get_local 1)
      (get_local 3))
    (i64.store offset=40
      (get_local 1)
      (get_local 2))
    (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
      (get_local 1)
      (i32.add
        (get_local 1)
        (i32.const 32)))
    (unreachable))
  (func $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 7
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 64))))
    (set_local 2
      (i32.load offset=12
        (get_local 1)))
    (set_local 3
      (i32.load offset=8
        (get_local 1)))
    (set_local 4
      (i32.load offset=4
        (get_local 1)))
    (set_local 1
      (i32.load
        (get_local 1)))
    (i64.store
      (tee_local 5
        (i32.add
          (i32.add
            (get_local 7)
            (i32.const 32))
          (i32.const 16)))
      (i64.load align=4
        (i32.add
          (get_local 0)
          (i32.const 16))))
    (i64.store
      (tee_local 6
        (i32.add
          (i32.add
            (get_local 7)
            (i32.const 32))
          (i32.const 8)))
      (i64.load align=4
        (i32.add
          (get_local 0)
          (i32.const 8))))
    (i64.store offset=32
      (get_local 7)
      (i64.load align=4
        (get_local 0)))
    (i32.store offset=56
      (get_local 7)
      (get_local 1))
    (i32.store offset=60
      (get_local 7)
      (get_local 4))
    (i64.store align=4
      (i32.add
        (i32.add
          (get_local 7)
          (i32.const 8))
        (i32.const 16))
      (i64.load
        (get_local 5)))
    (i64.store align=4
      (i32.add
        (i32.add
          (get_local 7)
          (i32.const 8))
        (i32.const 8))
      (i64.load
        (get_local 6)))
    (i64.store offset=8 align=4
      (get_local 7)
      (i64.load offset=32
        (get_local 7)))
    (i64.store align=4
      (get_local 7)
      (i64.load offset=56
        (get_local 7)))
    (call $rust_begin_unwind
      (i32.add
        (get_local 7)
        (i32.const 8))
      (get_local 7)
      (get_local 3)
      (get_local 2))
    (unreachable))
  (func $_ZN4core9panicking18panic_bounds_check17h5d8a2ea3d49d6e43E (type 5) (param i32 i32 i32)
    (local i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 3
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (i32.store
      (get_local 3)
      (get_local 1))
    (i32.store offset=4
      (get_local 3)
      (get_local 2))
    (i32.store
      (i32.add
        (i32.add
          (get_local 3)
          (i32.const 32))
        (i32.const 12))
      (i32.const 8))
    (i32.store offset=36
      (get_local 3)
      (i32.const 8))
    (i32.store offset=40
      (get_local 3)
      (get_local 3))
    (i32.store offset=16
      (get_local 3)
      (i32.const 2240))
    (i32.store offset=12
      (get_local 3)
      (i32.const 2))
    (i32.store offset=32
      (get_local 3)
      (i32.add
        (get_local 3)
        (i32.const 4)))
    (i32.store offset=8
      (get_local 3)
      (i32.const 2064))
    (i32.store
      (i32.add
        (i32.add
          (get_local 3)
          (i32.const 8))
        (i32.const 12))
      (i32.const 2))
    (i32.store offset=24
      (get_local 3)
      (i32.add
        (get_local 3)
        (i32.const 32)))
    (i32.store
      (i32.add
        (get_local 3)
        (i32.const 28))
      (i32.const 2))
    (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
      (i32.add
        (get_local 3)
        (i32.const 8))
      (get_local 0))
    (unreachable))
  (func $_ZN4core6option13expect_failed17h6057b6d59655e712E (type 7)
    (local i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 0
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (i32.store offset=12
      (get_local 0)
      (i32.const 17))
    (i32.store offset=8
      (get_local 0)
      (i32.const 656))
    (i32.store
      (i32.add
        (get_local 0)
        (i32.const 28))
      (i32.const 1))
    (i32.store offset=20
      (get_local 0)
      (i32.const 1))
    (i32.store offset=44
      (get_local 0)
      (i32.const 7))
    (i32.store offset=24
      (get_local 0)
      (i32.const 2140))
    (i32.store offset=40
      (get_local 0)
      (i32.add
        (get_local 0)
        (i32.const 8)))
    (i32.store offset=16
      (get_local 0)
      (i32.const 2132))
    (i32.store offset=32
      (get_local 0)
      (i32.add
        (get_local 0)
        (i32.const 40)))
    (i32.store
      (i32.add
        (get_local 0)
        (i32.const 36))
      (i32.const 1))
    (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
      (i32.add
        (get_local 0)
        (i32.const 16))
      (i32.const 2176))
    (unreachable))
  (func $_ZN4core5slice20slice_index_len_fail17hd29a24ba3407d757E (type 4) (param i32 i32)
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
      (get_local 0))
    (i32.store offset=4
      (get_local 2)
      (get_local 1))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 32))
        (i32.const 12))
      (i32.const 8))
    (i32.store offset=36
      (get_local 2)
      (i32.const 8))
    (i32.store offset=40
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 4)))
    (i32.store offset=16
      (get_local 2)
      (i32.const 2240))
    (i32.store offset=12
      (get_local 2)
      (i32.const 2))
    (i32.store offset=32
      (get_local 2)
      (get_local 2))
    (i32.store offset=8
      (get_local 2)
      (i32.const 2224))
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
      (i32.const 2312))
    (unreachable))
  (func $_ZN4core5slice22slice_index_order_fail17h0c35223839c942e1E (type 4) (param i32 i32)
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
      (get_local 0))
    (i32.store offset=4
      (get_local 2)
      (get_local 1))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 32))
        (i32.const 12))
      (i32.const 8))
    (i32.store offset=36
      (get_local 2)
      (i32.const 8))
    (i32.store offset=40
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 4)))
    (i32.store offset=16
      (get_local 2)
      (i32.const 2240))
    (i32.store offset=12
      (get_local 2)
      (i32.const 2))
    (i32.store offset=32
      (get_local 2)
      (get_local 2))
    (i32.store offset=8
      (get_local 2)
      (i32.const 2420))
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
      (i32.const 2436))
    (unreachable))
  (func $_ZN4core12char_private5check17h25b77805391c8205E (type 8) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    (set_local 13
      (i32.const 1))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (br_if 0 (;@6;)
                  (i32.eqz
                    (get_local 2)))
                (set_local 8
                  (i32.add
                    (get_local 1)
                    (i32.shl
                      (get_local 2)
                      (i32.const 1))))
                (set_local 7
                  (i32.shr_u
                    (i32.and
                      (get_local 0)
                      (i32.const 65280))
                    (i32.const 8)))
                (set_local 12
                  (i32.const 0))
                (set_local 11
                  (i32.and
                    (get_local 0)
                    (i32.const 255)))
                (loop  ;; label = @7
                  (set_local 9
                    (i32.add
                      (get_local 1)
                      (i32.const 2)))
                  (set_local 10
                    (i32.add
                      (tee_local 2
                        (i32.load8_u offset=1
                          (get_local 1)))
                      (get_local 12)))
                  (block  ;; label = @8
                    (block  ;; label = @9
                      (br_if 0 (;@9;)
                        (i32.ne
                          (get_local 7)
                          (tee_local 1
                            (i32.load8_u
                              (get_local 1)))))
                      (br_if 7 (;@2;)
                        (i32.lt_u
                          (get_local 10)
                          (get_local 12)))
                      (br_if 8 (;@1;)
                        (i32.gt_u
                          (get_local 10)
                          (get_local 4)))
                      (set_local 1
                        (i32.add
                          (get_local 3)
                          (get_local 12)))
                      (loop  ;; label = @10
                        (br_if 2 (;@8;)
                          (i32.eqz
                            (get_local 2)))
                        (set_local 2
                          (i32.add
                            (get_local 2)
                            (i32.const -1)))
                        (set_local 12
                          (i32.load8_u
                            (get_local 1)))
                        (set_local 1
                          (i32.add
                            (get_local 1)
                            (i32.const 1)))
                        (br_if 0 (;@10;)
                          (i32.ne
                            (get_local 12)
                            (get_local 11)))
                        (br 5 (;@5;)))
                      (unreachable))
                    (br_if 2 (;@8;)
                      (i32.lt_u
                        (get_local 7)
                        (get_local 1)))
                    (set_local 12
                      (get_local 10))
                    (set_local 1
                      (get_local 9))
                    (br_if 1 (;@9;)
                      (i32.ne
                        (get_local 9)
                        (get_local 8)))
                    (br 2 (;@8;)))
                  (set_local 12
                    (get_local 10))
                  (set_local 1
                    (get_local 9))
                  (br_if 0 (;@10;)
                    (i32.ne
                      (get_local 9)
                      (get_local 8)))))
              (br_if 1 (;@9;)
                (i32.eqz
                  (get_local 6)))
              (set_local 11
                (i32.add
                  (get_local 5)
                  (get_local 6)))
              (set_local 12
                (i32.and
                  (get_local 0)
                  (i32.const 65535)))
              (set_local 2
                (i32.add
                  (get_local 5)
                  (i32.const 1)))
              (set_local 13
                (i32.const 1))
              (loop  ;; label = @11
                (block  ;; label = @12
                  (block  ;; label = @13
                    (br_if 0 (;@13;)
                      (i32.le_s
                        (tee_local 10
                          (i32.shr_s
                            (i32.shl
                              (tee_local 1
                                (i32.load8_u
                                  (get_local 5)))
                              (i32.const 24))
                            (i32.const 24)))
                        (i32.const -1)))
                    (set_local 5
                      (get_local 2))
                    (br 1 (;@12;)))
                  (br_if 4 (;@9;)
                    (i32.eq
                      (get_local 2)
                      (get_local 11)))
                  (set_local 5
                    (i32.add
                      (get_local 2)
                      (i32.const 1)))
                  (set_local 1
                    (i32.or
                      (i32.load8_u
                        (get_local 2))
                      (i32.shl
                        (i32.and
                          (get_local 10)
                          (i32.const 127))
                        (i32.const 8)))))
                (br_if 2 (;@11;)
                  (i32.lt_s
                    (tee_local 12
                      (i32.sub
                        (get_local 12)
                        (get_local 1)))
                    (i32.const 0)))
                (set_local 13
                  (i32.xor
                    (get_local 13)
                    (i32.const 1)))
                (br_if 2 (;@11;)
                  (i32.eq
                    (get_local 5)
                    (get_local 11)))
                (set_local 2
                  (i32.add
                    (get_local 5)
                    (i32.const 1)))
                (br 0 (;@13;)))
              (unreachable))
            (set_local 13
              (i32.const 0)))
          (return
            (i32.and
              (get_local 13)
              (i32.const 1))))
        (call $_ZN4core9panicking5panic17h388b19995485ab52E
          (i32.const 3848))
        (unreachable))
      (call $_ZN4core5slice22slice_index_order_fail17h0c35223839c942e1E
        (get_local 12)
        (get_local 10))
      (unreachable))
    (call $_ZN4core5slice20slice_index_len_fail17hd29a24ba3407d757E
      (get_local 10)
      (get_local 4))
    (unreachable))
  (func $__wasm_nullptr (type 7)
    (unreachable))
  (table (;0;) 16 16 anyfunc)
  (memory (;0;) 17)
  (export "memory" (memory 0))
  (export "test_print_args" (func $test_print_args))
  (export "test_return_args" (func $test_return_args))
  (export "test_set_storage" (func $test_set_storage))
  (export "test_get_storage" (func $test_get_storage))
  (export "test_counter" (func $test_counter))
  (export "rust_begin_unwind" (func $rust_begin_unwind))
  (export "memcpy" (func $memcpy))
  (export "memmove" (func $memmove))
  (export "memset" (func $memset))
  (export "memcmp" (func $memcmp))
  (elem (i32.const 0) $__wasm_nullptr $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17he0e855804ed9a1faE $_ZN55_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2ceb0c6a1460bad2E $_ZN73_$LT$core..fmt..Arguments$LT$$u27$a$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h10aa4a4d757dd8d6E $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f588df9817810faE $_ZN55_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17h92dbaa5dd091f910E $_ZN4core3fmt10ArgumentV110show_usize17hbb4fe5a23913dc33E $_ZN55_$LT$$RF$$u27$a$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6d0c5b884d1c1f3aE $_ZN4core3fmt3num54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hf3fa95afcb7e8063E $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h1d76b7570b573baeE $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4ea32a9382c97361E $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17headb3a1168984a69E $_ZN4core3ptr13drop_in_place17h8866dde8cca892acE $_ZN96_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h2be41beb78a77972E $_ZN96_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$10write_char17h9757dc18459768ddE $_ZN96_$LT$core..fmt..Write..write_fmt..Adapter$LT$$u27$a$C$$u20$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_fmt17h73b6f874c56447a3E)
  (data (i32.const 4) "p\0f\10\00")
  (data (i32.const 16) "/Users/pepyakin/.cargo/registry/src/github.com-1ecc6299db9ec823/byteorder-1.2.1/src/lib.rs")
  (data (i32.const 112) "assertion failed: 4 <= buf.len()")
  (data (i32.const 144) "p\00\00\00 \00\00\00\10\00\00\00Z\00\00\00\a9\07\00\00\09\00\00\00")
  (data (i32.const 168) "args!")
  (data (i32.const 176) "you found me!")
  (data (i32.const 192) "counter")
  (data (i32.const 208) "new value is ")
  (data (i32.const 224) "\d0\00\00\00\0d\00\00\00")
  (data (i32.const 232) "\00\01\00\00\11\00\00\00 \01\00\00\13\00\00\00\ca\02\00\00\09\00\00\00")
  (data (i32.const 256) "capacity overflow")
  (data (i32.const 288) "liballoc/raw_vec.rs")
  (data (i32.const 308) "\00\00\00\00")
  (data (i32.const 312) "`\01\00\00\00\00\00\00`\01\00\00\01\00\00\00`\01\00\00\01\00\00\00`\01\00\00\01\00\00\00")
  (data (i32.const 352) ":")
  (data (i32.const 368) "wee_alloc cannot align to more than word alignment")
  (data (i32.const 420) "\0c\00\00\00\04\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00")
  (data (i32.const 444) "\10\02\00\00 \00\00\00\81\01\00\00\13\00\00\00")
  (data (i32.const 464) "a formatting trait implementation returned an error")
  (data (i32.const 528) "/checkout/src/libcore/fmt/mod.rs")
  (data (i32.const 560) "p\02\00\00\00\00\00\00p\02\00\00\02\00\00\00")
  (data (i32.const 576) "P\02\00\00\11\00\00\00\94\03\00\00\05\00\00\00")
  (data (i32.const 592) "libcore/result.rs")
  (data (i32.const 624) ": ")
  (data (i32.const 628) "\90\02\00\00\11\00\00\00\b0\02\00\00\13\00\00\00\ca\02\00\00\09\00\00\00")
  (data (i32.const 656) "capacity overflow")
  (data (i32.const 688) "liballoc/raw_vec.rs")
  (data (i32.const 708) "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
  (data (i32.const 912) "\d0\03\00\00\12\00\00\00?\04\00\00\11\00\00\00")
  (data (i32.const 928) "\f0\03\00\00+\00\00\00 \04\00\00\11\00\00\00O\01\00\00\15\00\00\00")
  (data (i32.const 952) "\d0\03\00\00\12\00\00\003\04\00\00(\00\00\00")
  (data (i32.const 976) "libcore/fmt/mod.rs")
  (data (i32.const 1008) "called `Option::unwrap()` on a `None` value")
  (data (i32.const 1056) "libcore/option.rs")
  (data (i32.const 1088) "Error")
  (data (i32.const 1104) "[...]")
  (data (i32.const 1120) "\e0\06\00\00\0b\00\00\00\d0\07\00\00\16\00\00\00@\07\00\00\01\00\00\00")
  (data (i32.const 1144) "\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00")
  (data (i32.const 1252) "\c0\06\00\00\12\00\00\00\ad\08\00\00\09\00\00\00")
  (data (i32.const 1268) "\a0\07\00\00\0e\00\00\00\b0\07\00\00\04\00\00\00\c0\07\00\00\10\00\00\00@\07\00\00\01\00\00\00")
  (data (i32.const 1300) "\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\03\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00")
  (data (i32.const 1444) "\c0\06\00\00\12\00\00\00\b1\08\00\00\05\00\00\00")
  (data (i32.const 1460) "P\07\00\00+\00\00\00\80\07\00\00\11\00\00\00O\01\00\00\15\00\00\00")
  (data (i32.const 1484) "\e0\06\00\00\0b\00\00\00\f0\06\00\00&\00\00\00 \07\00\00\08\00\00\000\07\00\00\06\00\00\00@\07\00\00\01\00\00\00")
  (data (i32.const 1524) "\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\03\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\04\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00")
  (data (i32.const 1704) "\c0\06\00\00\12\00\00\00\be\08\00\00\05\00\00\00")
  (data (i32.const 1728) "libcore/str/mod.rs")
  (data (i32.const 1760) "byte index ")
  (data (i32.const 1776) " is not a char boundary; it is inside ")
  (data (i32.const 1824) " (bytes ")
  (data (i32.const 1840) ") of `")
  (data (i32.const 1856) "`")
  (data (i32.const 1872) "called `Option::unwrap()` on a `None` value")
  (data (i32.const 1920) "libcore/option.rs")
  (data (i32.const 1952) "begin <= end (")
  (data (i32.const 1968) " <= ")
  (data (i32.const 1984) ") when slicing `")
  (data (i32.const 2000) " is out of bounds of `")
  (data (i32.const 2032) "..")
  (data (i32.const 2036) "\10\08\00\00\00\00\00\00\f0\07\00\00\02\00\00\00")
  (data (i32.const 2064) " \08\00\00 \00\00\00@\08\00\00\12\00\00\00")
  (data (i32.const 2080) "index out of bounds: the len is ")
  (data (i32.const 2112) " but the index is ")
  (data (i32.const 2132) "\b0\08\00\00\00\00\00\00")
  (data (i32.const 2140) "\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00")
  (data (i32.const 2176) "\90\08\00\00\11\00\00\00{\03\00\00\05\00\00\00")
  (data (i32.const 2192) "libcore/option.rs")
  (data (i32.const 2224) "@\09\00\00\06\00\00\00P\09\00\00\22\00\00\00")
  (data (i32.const 2240) "\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00")
  (data (i32.const 2312) " \09\00\00\14\00\00\00\fb\02\00\00\05\00\00\00")
  (data (i32.const 2336) "libcore/slice/mod.rs")
  (data (i32.const 2368) "index ")
  (data (i32.const 2384) " out of range for slice of length ")
  (data (i32.const 2420) "\a0\09\00\00\16\00\00\00\c0\09\00\00\0d\00\00\00")
  (data (i32.const 2436) " \09\00\00\14\00\00\00\01\03\00\00\05\00\00\00")
  (data (i32.const 2464) "slice index starts at ")
  (data (i32.const 2496) " but ends at ")
  (data (i32.const 2512) "\00\01\03\05\05\08\06\03\07\04\08\08\09\10\0a\1b\0b\19\0c\16\0d\12\0e\16\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1d\01\1f\16 \03+\05,\02-\0b.\010\031\032\02\a7\01\a8\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09")
  (data (i32.const 2608) "\adxy\8b\8d\a20WX`\88\8b\8c\90\1c\1d\dd\0e\0fKL./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\04\0d\11)EIWde\84\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\04\0d\11EIde\80\81\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\86\89\8b\8c\98\a0\a4\a6\a8\a9\ac\ba\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96\97\c9/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\98/0\8f\1f\ff\af\fe\ff\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff")
  (data (i32.const 2912) "\00 _\22\82\df\04\82D\08\1b\05\05\11\81\ac\0e;\05k5\1e\16\80\df\03\19\08\01\04\22\03\0a\044\04\07\03\01\07\06\07\10\0bP\0f\12\07U\08\02\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\08V\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%\0d\06L m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06X\08+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06\1fAL\04-\03t\08<\03\0f\03<7\08\08*\06\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\87Z\03\16\19\04\10\80\f4\05/\05;\07\02\0e\18\09\80\aa6t\0c\80\d6\1a\0c\05\80\ff\05\80\b6\05$\0c\9b\c6\0a\d2+\15\84\8d\037\09\81\5c\14\80\b8\08\80\b8?5\04\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09F\0a\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d")
  (data (i32.const 3248) "\00\06\01\01\03\01\04\02\08\08\09\02\0a\03\0b\02\10\01\11\04\12\05\13\12\14\02\15\02\1a\03\1c\05\1d\04$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e8\02\ee \f0\04\f1\01\f9\01")
  (data (i32.const 3328) "\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\18VW\bd5\ce\cf\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:;EFIJNOdeZ\5c\b6\b7\84\85\9d\097\90\91\a8\07\0a;>o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0/?")
  (data (i32.const 3488) "^\22{\05\03\04-\03e\04\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05(\04\03\04\09\08\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07\06\81`\1f\81\81N\04\1e\0fC\0e\19\07\0a\06D\0c'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8b^\22H\08\0a\80\a6^\22E\0b\0a\06\0d\138\08\0a6\1a\03\0f\04\10\81`S\0c\01\81\00H\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\82\a6\83\9afu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\83pE\0b/\10\11@\02\1e\97\ed\13\82\f3\a5\0d\81\1fQ\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\baW\09\12\80\8e\81G\03\85B\0f\15\85P+\87\d5\80\d7)K\05\0a\04\02\84\a0<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\0d\03\5c\04=9\1d\0d,\04\09\07\02\0e\06\80\9a\83\d5\0b\0d\03\09\07t\0cU+\0c\048\08\0a\06(\08\1eR\0c\04=\03\1c\14\18(\01\0f\17\86\19")
  (data (i32.const 3848) " \0f\00\00+\00\00\00P\0f\00\00\11\00\00\00O\01\00\00\15\00\00\00")
  (data (i32.const 3872) "called `Option::unwrap()` on a `None` value")
  (data (i32.const 3920) "libcore/option.rs"))
