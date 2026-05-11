const express = require('express')

const app = express()

app.get('/script.js', (req, res) => {
  res.type('application/javascript')

  res.send(`
    "use client";

import { motion } from "framer-motion";
import Link from "next/link";

export default function Hero() {
  return (
    <section className="relative h-screen overflow-hidden bg-black">
      <video
        autoPlay
        muted
        loop
        playsInline
        className="absolute w-full h-full object-cover opacity-40"
      >
        <source src="/videos/hero.mp4" type="video/mp4" />
      </video>

      <div className="absolute inset-0 bg-gradient-to-b from-black/70 via-black/50 to-black" />

      <div className="relative z-10 flex items-center justify-center h-full">
        <div className="max-w-6xl px-6 text-center">
          <motion.h1
            initial={{ opacity: 0, y: 80 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 1 }}
            className="text-5xl md:text-8xl font-black text-white leading-tight"
          >
            Laudos Automotivos
            <span className="text-orange-500"> Premium</span>
          </motion.h1>

          <motion.p
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.4 }}
            className="mt-8 text-zinc-300 text-xl md:text-2xl max-w-3xl mx-auto"
          >
            Tecnologia, precisão e confiança para lojistas e compradores.
          </motion.p>

          <motion.div
            className="flex flex-col md:flex-row gap-4 justify-center mt-10"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.7 }}
          >
            <Link
              href="/orcamento"
              className="bg-orange-500 hover:bg-orange-400 transition-all px-8 py-4 rounded-2xl text-lg font-semibold shadow-2xl shadow-orange-500/30"
            >
              Solicitar orçamento
            </Link>

            <Link
              href="/planos"
              className="border border-white/20 hover:border-orange-500 transition-all px-8 py-4 rounded-2xl text-lg"
            >
              Conhecer planos
            </Link>
          </motion.div>
        </div>
      </div>
    </section>
  );
}
  `)
})

app.get('/', (req, res) => {
  res.send('Servidor online')
})

const PORT = process.env.PORT || 3000

app.listen(PORT, () => {
  console.log('Servidor rodando')
})