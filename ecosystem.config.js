require('dotenv').config()

module.exports = {
  apps: [
    {
      name: 'BRIS server',
      script: 'dist/index.js',
      watch: true,
      instances: 1,
      // exec_mode: 'cluster',
      error_file: `${process.env.LOGS_PATH}/pm2/err.log`,
      out_file: '/dev/null',
      // log_file: '/dev/null',
      // out_file: `${process.env.LOGS_PATH}/pm2/out.log`,
      instance_var: 'INSTANCE_ID',
      env: {
        NODE_ENV: 'production',
      },
      ignore_watch: ['node_modules', 'dist'],
    },
  ],
}
