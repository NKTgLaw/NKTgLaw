// OpenCL: parallel computing language for GPUs and CPUs
__kernel void compute_nktg(__global float *output) {
  float x = 2.0f, v = 3.0f, m = 5.0f, dm_dt = 0.1f;
  float p = m * v;
  float NKTg1 = x * p;
  float NKTg2 = dm_dt * p;
  output[0] = p;
  output[1] = NKTg1;
  output[2] = NKTg2;
}
