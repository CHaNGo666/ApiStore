using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace ApiStore.Models;

public partial class GeneralStoreContext : DbContext
{
    public GeneralStoreContext()
    {
    }

    public GeneralStoreContext(DbContextOptions<GeneralStoreContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Category> Categories { get; set; }

    public virtual DbSet<Departamento> Departamentos { get; set; }

    public virtual DbSet<ImagenProducto> ImagenProductos { get; set; }

    public virtual DbSet<Product> Products { get; set; }

    public virtual DbSet<Provincia> Provincias { get; set; }

    public virtual DbSet<RelPCSc> RelPCScs { get; set; }

    public virtual DbSet<State> States { get; set; }

    public virtual DbSet<Stock> Stocks { get; set; }

    public virtual DbSet<StockDetail> StockDetails { get; set; }

    public virtual DbSet<Store> Stores { get; set; }

    public virtual DbSet<SubCategory> SubCategories { get; set; }

//    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
//        => optionsBuilder.UseSqlServer("server=PCCHANGO2018; database= GeneralStore; Encrypt=False; integrated security=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasKey(e => e.IdCategory);

            entity.ToTable("Category");

            entity.Property(e => e.Abm)
                .HasMaxLength(2)
                .IsUnicode(false)
                .HasColumnName("ABM");
            entity.Property(e => e.CategoryName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.Usuario)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.IdStoreNavigation).WithMany(p => p.Categories)
                .HasForeignKey(d => d.IdStore)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Category_Store");
        });

        modelBuilder.Entity<Departamento>(entity =>
        {
            entity.Property(e => e.Departamento1)
                .HasMaxLength(255)
                .HasColumnName("Departamento");

            entity.HasOne(d => d.CodigoNavigation).WithMany(p => p.Departamentos)
                .HasForeignKey(d => d.Codigo)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Departamentos_Provincias");
        });

        modelBuilder.Entity<ImagenProducto>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("ImagenProducto");

            entity.Property(e => e.Abm)
                .HasMaxLength(2)
                .IsUnicode(false);
            entity.Property(e => e.Descripcion).IsUnicode(false);
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.Imagen).HasColumnType("image");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false);

            entity.HasOne(d => d.IdProductoNavigation).WithMany()
                .HasForeignKey(d => d.IdProducto)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ImagenProducto_Product");

            entity.HasOne(d => d.IdStoreNavigation).WithMany()
                .HasForeignKey(d => d.IdStore)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_ImagenProducto_Store");
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.IdProduct);

            entity.ToTable("Product");

            entity.Property(e => e.Abm)
                .HasMaxLength(2)
                .IsUnicode(false)
                .HasColumnName("ABM");
            entity.Property(e => e.Codigo)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.DescriptionProduct).IsUnicode(false);
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.ProductName)
                .HasMaxLength(70)
                .IsUnicode(false);
            entity.Property(e => e.Usuario)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.IdStoreNavigation).WithMany(p => p.Products)
                .HasForeignKey(d => d.IdStore)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Product_Store");
        });

        modelBuilder.Entity<Provincia>(entity =>
        {
            entity.HasKey(e => e.Codigo);

            entity.Property(e => e.Provincia1)
                .HasMaxLength(255)
                .HasColumnName("Provincia");
        });

        modelBuilder.Entity<RelPCSc>(entity =>
        {
            entity.HasKey(e => e.IdPcsc);

            entity.ToTable("Rel_P_C_SC");

            entity.Property(e => e.IdPcsc).HasColumnName("IdPCSC");
            entity.Property(e => e.Abm).HasColumnName("ABM");
            entity.Property(e => e.Borrado)
                .HasMaxLength(2)
                .IsUnicode(false);
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.Usuario)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.IdCategoryNavigation).WithMany(p => p.RelPCScs)
                .HasForeignKey(d => d.IdCategory)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Rel_P_C_SC_Category");

            entity.HasOne(d => d.IdStoreNavigation).WithMany(p => p.RelPCScs)
                .HasForeignKey(d => d.IdStore)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Rel_P_C_SC_Store");

            entity.HasOne(d => d.IdSubcategoryNavigation).WithMany(p => p.RelPCScs)
                .HasForeignKey(d => d.IdSubcategory)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Rel_P_C_SC_SubCategory");
        });

        modelBuilder.Entity<State>(entity =>
        {
            entity.HasKey(e => e.IdState);

            entity.ToTable("State");

            entity.Property(e => e.Abm)
                .HasMaxLength(2)
                .IsUnicode(false)
                .HasColumnName("ABM");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.DescripcionCorta)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.NameList)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Usuario)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Stock>(entity =>
        {
            entity.HasKey(e => e.IdStock);

            entity.ToTable("Stock");

            entity.Property(e => e.Abm)
                .HasMaxLength(2)
                .IsUnicode(false)
                .HasColumnName("ABM");
            entity.Property(e => e.FechaBaja).HasColumnType("datetime");
            entity.Property(e => e.FechaIngreso).HasColumnType("datetime");
            entity.Property(e => e.Precio).HasColumnType("decimal(18, 0)");
            entity.Property(e => e.Usuario)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.IdProductNavigation).WithMany(p => p.Stocks)
                .HasForeignKey(d => d.IdProduct)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Stock_Product");

            entity.HasOne(d => d.IdStoreNavigation).WithMany(p => p.Stocks)
                .HasForeignKey(d => d.IdStore)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Stock_Store");
        });

        modelBuilder.Entity<StockDetail>(entity =>
        {
            entity.HasKey(e => e.IdStockDetail);

            entity.ToTable("StockDetail");

            entity.Property(e => e.Abm).HasColumnName("ABM");
            entity.Property(e => e.Borrado)
                .HasMaxLength(2)
                .IsUnicode(false);
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.FechaCompra).HasColumnType("datetime");
            entity.Property(e => e.Precio).HasColumnType("decimal(18, 0)");
            entity.Property(e => e.Usuario)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.IdProductNavigation).WithMany(p => p.StockDetails)
                .HasForeignKey(d => d.IdProduct)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_StockDetail_Product");

            entity.HasOne(d => d.IdStateEstadoNavigation).WithMany(p => p.StockDetailIdStateEstadoNavigations)
                .HasForeignKey(d => d.IdStateEstado)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_StockDetail_State");

            entity.HasOne(d => d.IdStateOperacionNavigation).WithMany(p => p.StockDetailIdStateOperacionNavigations)
                .HasForeignKey(d => d.IdStateOperacion)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_StockDetail_State1");

            entity.HasOne(d => d.IdStoreNavigation).WithMany(p => p.StockDetails)
                .HasForeignKey(d => d.IdStore)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_StockDetail_Store");
        });

        modelBuilder.Entity<Store>(entity =>
        {
            entity.HasKey(e => e.IdStore);

            entity.ToTable("Store");

            entity.Property(e => e.Abm)
                .HasMaxLength(2)
                .IsUnicode(false)
                .HasColumnName("ABM");
            entity.Property(e => e.Altura)
                .HasMaxLength(15)
                .IsUnicode(false);
            entity.Property(e => e.Barrio)
                .HasMaxLength(150)
                .IsUnicode(false);
            entity.Property(e => e.Calle)
                .HasMaxLength(70)
                .IsUnicode(false);
            entity.Property(e => e.Celular)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Cuit)
                .HasMaxLength(15)
                .IsUnicode(false)
                .HasColumnName("CUIT");
            entity.Property(e => e.RazonSocial)
                .HasMaxLength(200)
                .IsUnicode(false);
            entity.Property(e => e.Telefono)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Usuario)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.DepartamentoNavigation).WithMany(p => p.Stores)
                .HasForeignKey(d => d.Departamento)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Store_Departamentos");

            entity.HasOne(d => d.IdMasterHomeNavigation).WithMany(p => p.InverseIdMasterHomeNavigation)
                .HasForeignKey(d => d.IdMasterHome)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Store_Store");

            entity.HasOne(d => d.ProvinciaNavigation).WithMany(p => p.Stores)
                .HasForeignKey(d => d.Provincia)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Store_Provincias");
        });

        modelBuilder.Entity<SubCategory>(entity =>
        {
            entity.HasKey(e => e.IdSubCategory);

            entity.ToTable("SubCategory");

            entity.Property(e => e.Abm).HasColumnName("ABM");
            entity.Property(e => e.Borrado)
                .HasMaxLength(2)
                .IsUnicode(false);
            entity.Property(e => e.FechaAlta).HasColumnType("datetime");
            entity.Property(e => e.SubCategoryName)
                .HasMaxLength(70)
                .IsUnicode(false);
            entity.Property(e => e.Usuario)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.IdStoreNavigation).WithMany(p => p.SubCategories)
                .HasForeignKey(d => d.IdStore)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_SubCategory_Store");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
