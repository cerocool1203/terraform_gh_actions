import React from "react"

import Layout from "../components/layout"
import Image from "../components/image"

const IndexPage = () => (
  <Layout>
    <title>CeroCool Page</title>
    <h1>Hi all</h1>
    <h1>Don't forget to visit https://blog.johnalfaro.com/ .</h1>
    <div style={{ maxWidth: `600px`, marginBottom: `1.45rem` }}>
      <Image />
    </div>
  </Layout>
)

export default IndexPage
