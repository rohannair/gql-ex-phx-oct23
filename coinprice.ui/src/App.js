import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import { ApolloProvider } from 'react-apollo'

import client from './graphql'

import Base from './layouts/Base'

import Home from './routes/Home'
import Coin from './routes/Coin'
import NotFound from './routes/NotFound'

export default () =>
  <ApolloProvider client={client}>
    <Base>
      <BrowserRouter>
        <Switch>
          <Route path="/" exact component={Home} />
          <Route path="/coin/:id" exact component={Coin} />
          <Route path="/" component={NotFound} />
        </Switch>
      </BrowserRouter>
    </Base>
  </ApolloProvider>
