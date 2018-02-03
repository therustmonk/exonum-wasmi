(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32)))
  (type (;6;) (func))
  (import "env" "args" (func $args (type 0)))
  (import "env" "args_len" (func $args_len (type 1)))
  (import "env" "debug" (func $debug (type 2)))
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
  (func $memcpy (type 4) (param i32 i32 i32) (result i32)
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
  (func $memmove (type 4) (param i32 i32 i32) (result i32)
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
  (func $memset (type 4) (param i32 i32 i32) (result i32)
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
  (func $memcmp (type 4) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking5panic17h388b19995485ab52E (type 0) (param i32)
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
      (i32.const 12))
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
  (func $rust_begin_unwind (type 5) (param i32 i32 i32 i32)
    (unreachable)
    (unreachable))
  (func $execute_transaction (type 6)
    (local i32 i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 4
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 32))))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.le_s
          (tee_local 0
            (call $args_len))
          (i32.const -1)))
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (br_if 0 (;@7;)
                    (i32.eqz
                      (get_local 0)))
                  (set_local 3
                    (i32.shr_u
                      (i32.add
                        (get_local 0)
                        (i32.const 3))
                      (i32.const 2)))
                  (br_if 1 (;@6;)
                    (i32.eqz
                      (i32.load offset=100
                        (i32.const 0))))
                  (call $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E
                    (i32.add
                      (get_local 4)
                      (i32.const 24))
                    (get_local 3)
                    (i32.const 100))
                  (br_if 2 (;@5;)
                    (i32.eqz
                      (i32.load offset=24
                        (get_local 4))))
                  (set_local 1
                    (current_memory))
                  (drop
                    (grow_memory
                      (tee_local 2
                        (i32.shr_u
                          (i32.add
                            (i32.shl
                              (get_local 3)
                              (i32.const 2))
                            (i32.const 65543))
                          (i32.const 16)))))
                  (i32.store
                    (tee_local 1
                      (i32.shl
                        (get_local 1)
                        (i32.const 16)))
                    (i32.add
                      (i32.shl
                        (get_local 2)
                        (i32.const 16))
                      (i32.const -8)))
                  (i32.store offset=4
                    (get_local 1)
                    (i32.const 0))
                  (set_local 2
                    (i32.load offset=100
                      (i32.const 0)))
                  (i32.store offset=100
                    (i32.const 0)
                    (get_local 1))
                  (i32.store offset=4
                    (get_local 1)
                    (get_local 2))
                  (call $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E
                    (i32.add
                      (get_local 4)
                      (i32.const 16))
                    (get_local 3)
                    (i32.const 100))
                  (br 3 (;@4;)))
                (set_local 3
                  (i32.const 1))
                (br 3 (;@4;)))
              (set_local 1
                (current_memory))
              (drop
                (grow_memory
                  (tee_local 2
                    (i32.shr_u
                      (i32.add
                        (i32.shl
                          (get_local 3)
                          (i32.const 2))
                        (i32.const 65543))
                      (i32.const 16)))))
              (i32.store
                (tee_local 1
                  (i32.shl
                    (get_local 1)
                    (i32.const 16)))
                (i32.add
                  (i32.shl
                    (get_local 2)
                    (i32.const 16))
                  (i32.const -8)))
              (i32.store offset=4
                (get_local 1)
                (i32.const 0))
              (set_local 2
                (i32.load offset=100
                  (i32.const 0)))
              (i32.store offset=100
                (i32.const 0)
                (get_local 1))
              (i32.store offset=4
                (get_local 1)
                (get_local 2))
              (call $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E
                (i32.add
                  (get_local 4)
                  (i32.const 16))
                (get_local 3)
                (i32.const 100))
              (br 1 (;@6;)))
            (i32.store offset=20
              (get_local 4)
              (i32.load offset=28
                (get_local 4)))
            (i32.store offset=16
              (get_local 4)
              (i32.const 0)))
          (set_local 3
            (i32.const 1))
          (block  ;; label = @8
            (block  ;; label = @9
              (br_if 0 (;@9;)
                (i32.ne
                  (i32.load offset=16
                    (get_local 4))
                  (i32.const 1)))
              (i32.store
                (i32.add
                  (get_local 4)
                  (i32.const 8))
                (get_local 0))
              (i32.store offset=4
                (get_local 4)
                (i32.const 0))
              (set_local 1
                (i32.const 2))
              (set_local 2
                (i32.const 1))
              (br 1 (;@8;)))
            (set_local 3
              (i32.const 0))
            (set_local 2
              (i32.load offset=20
                (get_local 4)))
            (set_local 1
              (i32.const 0)))
          (i32.store
            (i32.add
              (i32.or
                (get_local 4)
                (i32.const 4))
              (i32.shl
                (get_local 1)
                (i32.const 2)))
            (get_local 2))
          (i32.store
            (get_local 4)
            (get_local 3))
          (br_if 1 (;@8;)
            (get_local 3))
          (br_if 1 (;@8;)
            (i32.eqz
              (call $memset
                (tee_local 3
                  (i32.load offset=4
                    (get_local 4)))
                (i32.const 0)
                (get_local 0)))))
        (call $args
          (get_local 3))
        (call $debug
          (i32.const 104)
          (i32.const 12))
        (call $debug
          (get_local 3)
          (get_local 0))
        (block  ;; label = @10
          (br_if 0 (;@10;)
            (i32.eqz
              (get_local 0)))
          (i32.store
            (i32.add
              (get_local 3)
              (i32.const -4))
            (i32.load offset=100
              (i32.const 0)))
          (i32.store offset=100
            (i32.const 0)
            (i32.add
              (get_local 3)
              (i32.const -8))))
        (i32.store offset=4
          (i32.const 0)
          (i32.add
            (get_local 4)
            (i32.const 32)))
        (return))
      (unreachable)
      (unreachable))
    (call $_ZN4core9panicking5panic17h388b19995485ab52E
      (i32.const 12))
    (unreachable))
  (func $query_state (type 6))
  (table (;0;) 0 anyfunc)
  (memory (;0;) 17)
  (export "memory" (memory 0))
  (export "memcpy" (func $memcpy))
  (export "memmove" (func $memmove))
  (export "memset" (func $memset))
  (export "memcmp" (func $memcmp))
  (export "rust_begin_unwind" (func $rust_begin_unwind))
  (export "execute_transaction" (func $execute_transaction))
  (export "query_state" (func $query_state))
  (data (i32.const 4) "\80\00\10\00")
  (data (i32.const 12) "0\00\00\00\11\00\00\00P\00\00\00\13\00\00\00\ca\02\00\00\09\00\00\00")
  (data (i32.const 48) "capacity overflow")
  (data (i32.const 80) "liballoc/raw_vec.rs")
  (data (i32.const 100) "\00\00\00\00")
  (data (i32.const 104) "hello world!"))
