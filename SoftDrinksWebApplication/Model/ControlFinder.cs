using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace SoftDrinksWebApplication.Model
{
    public class ControlFinder<T> where T: Control
    {
        private readonly List<T> foundControls = new List<T>();
        public IEnumerable<T> foundsControls {
            get { return foundControls; }
        }
        public void findChildControlsRecursive(Control control) {
            foreach (Control childControls in control.Controls) {
                if (childControls.GetType() == typeof(T))
                {
                    foundControls.Add((T)childControls);
                }
                else {
                    findChildControlsRecursive(childControls);
                }
            }
        }
     }
}