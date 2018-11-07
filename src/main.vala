/* main.vala
 *
 * Copyright 2018 Benjamin Flanagin
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

public class MyApp : Gtk.Application {

    public MyApp () {
        Object (
            application_id: "com.github.bflanagin.Dtunes",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {

        var button_hello = new Gtk.Button.with_label ("Click me!");
        button_hello.margin = 12;
        button_hello.clicked.connect (() => {
        button_hello.label = "Hello World!";
        button_hello.sensitive = false;
        });

        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 700;
        main_window.default_width = 1000;
        main_window.title = "Dtunes";

        //add stuff here
        main_window.add (button_hello);


        main_window.show_all ();
    }


    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}
