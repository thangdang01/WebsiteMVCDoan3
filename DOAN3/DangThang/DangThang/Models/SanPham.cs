//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DangThang.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            this.ChiTietHoaDon = new HashSet<ChiTietHoaDon>();
        }
    
        public int MaSP { get; set; }
        public string TenSP { get; set; }
        public Nullable<int> Gia { get; set; }
        public string Anh { get; set; }
        public Nullable<int> BaoHanh { get; set; }
        public string MoTa { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
        public Nullable<int> MaLoaiSP { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietHoaDon> ChiTietHoaDon { get; set; }
        public virtual LoaiSP LoaiSP { get; set; }
    }
}
