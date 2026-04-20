import React from "react";
import {
  AppBar,
  Toolbar,
  Typography,
  Drawer,
  List,
  ListItem,
  ListItemText,
  Card,
  CardContent,
  CardActions,
  Button,
  Grid,
  Container
} from "@mui/material";

function App() {
  return (
    <div>

      {/* AppBar */}
      <AppBar position="static">
        <Toolbar>
          <Typography variant="h6">
            E-Commerce App
          </Typography>
        </Toolbar>
      </AppBar>

      {/* Drawer */}
      <Drawer variant="permanent" anchor="left">
        <List>
          <ListItem button>
            <ListItemText primary="Home" />
          </ListItem>
          <ListItem button>
            <ListItemText primary="Cart" />
          </ListItem>
        </List>
      </Drawer>

      {/* Main Content */}
      <Container style={{ marginLeft: 200, marginTop: 20 }}>
        <Grid container spacing={3}>

          {/* Product Card 1 */}
          <Grid item xs={12} sm={6} md={4}>
            <Card>
              <CardContent>
                <Typography variant="h6">Product 1</Typography>
                <Typography>Price: ₹100</Typography>
              </CardContent>
              <CardActions>
                <Button variant="contained">Buy</Button>
              </CardActions>
            </Card>
          </Grid>

          {/* Product Card 2 */}
          <Grid item xs={12} sm={6} md={4}>
            <Card>
              <CardContent>
                <Typography variant="h6">Product 2</Typography>
                <Typography>Price: ₹200</Typography>
              </CardContent>
              <CardActions>
                <Button variant="contained">Buy</Button>
              </CardActions>
            </Card>
          </Grid>

        </Grid>
      </Container>

    </div>
  );
}

export default App;