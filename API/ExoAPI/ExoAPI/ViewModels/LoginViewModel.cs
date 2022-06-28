﻿using System.ComponentModel.DataAnnotations;

namespace ExoAPI.ViewModels
{
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Email Requerido")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Senha Requerido")]
        public string Senha { get; set; }
    }
}
