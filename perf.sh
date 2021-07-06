echo 192000 > /sys/kernel/debug/tracing/buffer_size_kb
echo 1 > /sys/kernel/debug/tracing/events/irq/enable
echo 1 > /sys/kernel/debug/tracing/events/ipi/enable
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_wait/enable
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_process_fork/enable
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_waking/enable
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_wakeup/enable
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_wakeup_new/enable
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_iowait/enable
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_runtime/enable
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_wait/enable


echo 1 > /sys/kernel/debug/tracing/tracing_on
//do your test
echo 0 > /sys/kernel/debug/tracing/tracing_on

cat /sys/kernel/debug/tracing/trace > log

pidin -fINVJphi -p qvm
on -p 50 -R 0xF7 tracelogger -s 10 &

 <...>-15644 [007] ....   176.982784: tracing_mark_write: 5

echo 0 > /sys/kernel/debug/tracing/tracing/trace ; echo 1 > /sys/kernel/debug/tracing/tracing_on ； taskset 80 /home/root/testoms.exe ; echo 0 > /sys/kernel/debug/tracing/tracing_on
