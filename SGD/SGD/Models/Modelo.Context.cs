﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SGD.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class sgdbEntities : DbContext
    {
        public sgdbEntities()
            : base("name=sgdbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<categoria> categoria { get; set; }
        public DbSet<Condicao_tb> Condicao_tb { get; set; }
        public DbSet<departamento> departamento { get; set; }
        public DbSet<documento> documento { get; set; }
        public DbSet<documentosenviados> documentosenviados { get; set; }
        public DbSet<EnviarDocumentos> EnviarDocumentos { get; set; }
        public DbSet<Funcoes_tb> Funcoes_tb { get; set; }
        public DbSet<pastadepartamento> pastadepartamento { get; set; }
        public DbSet<PermissaoDeparramento_tb> PermissaoDeparramento_tb { get; set; }
        public DbSet<RecebimentoDocumentos> RecebimentoDocumentos { get; set; }
        public DbSet<RespostaDocumento> RespostaDocumento { get; set; }
        public DbSet<Sms_tb> Sms_tb { get; set; }
        public DbSet<sysdiagrams> sysdiagrams { get; set; }
        public DbSet<TipoFuncao_tb> TipoFuncao_tb { get; set; }
        public DbSet<user> user { get; set; }
        public DbSet<View_Expedientes> View_Expedientes { get; set; }
        public DbSet<View_Pastas> View_Pastas { get; set; }
        public DbSet<View_PermissaoDepartamento> View_PermissaoDepartamento { get; set; }
        public DbSet<View_Recebimentos> View_Recebimentos { get; set; }
        public DbSet<Cartas_tb> Cartas_tb { get; set; }
        public DbSet<Curso_tb> Curso_tb { get; set; }
        public DbSet<Pedidos_tb> Pedidos_tb { get; set; }
        public DbSet<View_RespostasCartas> View_RespostasCartas { get; set; }
        public DbSet<RespostaCartas_tb> RespostaCartas_tb { get; set; }
        public DbSet<COMConfig_tb> COMConfig_tb { get; set; }
        public DbSet<RespostaDocumentoUsuario_tb> RespostaDocumentoUsuario_tb { get; set; }
        public DbSet<Instituicao_tb> Instituicao_tb { get; set; }
        public DbSet<DocumentoUsuario_tb> DocumentoUsuario_tb { get; set; }
    }
}
