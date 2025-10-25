# Postal GPS Script

A simple FiveM client-side script that allows players to set a waypoint using postal codes.

**Features:**  
- `/gps [postal code]` command to set a waypoint at a predefined location.  
- ox_lib notifications for success and errors.  
- Easy to add new postal codes in the configuration.  
- Prints a resource start message to the console.

---

## Installation

1. Place the resource in your server's `resources` folder.  
2. Add the resource to your `server.cfg` using:

3. Restart your server or start the resource manually.

---

## Configuration

Edit the `Config` table in the client script to add or modify postal codes:

```lua
Config = {
 Prefix = "[GPS] ",
 postalcodes = {
     { code = "001", x = 200.0, y = 300.0 },
     { code = "002", x = 400.0, y = 500.0 },
     -- Add your own postal codes here
 }
}
