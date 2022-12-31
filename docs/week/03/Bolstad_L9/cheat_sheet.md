## Bolstad Lab 9 cheat sheet

[Bolstad's Lab 9](Bolstad_L9.pdf) is a good intro to buffering and overlay, but it's a bit too complicated for its own good (so to speak.) Here's a simpler way to do it.

### Buffering

To create the variable distance buffers around the lakes, instead of messing with the attribute table, do this:

1. Select *Vector→Geoprocessing Tools→Buffer*

1. Under *Distance*, click on the *Data defined override* button (next to meters) and select *Edit…*

1. Paste this text into the *Expression* box:

   ```sql
   CASE
   WHEN SIZE_CLS = 1 THEN 50
   WHEN SIZE_CLS = 2 THEN 150
   WHEN SIZE_CLS = 3 THEN 500
   END
   ```

1. Click *OK*, then *Run*

### Overlay

Again, no need to mess with the attribute tables, or with the geometries. Just run the following tools:

1. *Difference* (variable lakes buffer − lakes)
1. *Intersection* (difference ∩ roads buffer)
1. *Difference* (intersection − public)