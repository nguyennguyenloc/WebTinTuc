namespace WebTin.Data.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RoleFunctionRelationship")]
    public partial class RoleFunctionRelationship
    {
        public long Id { get; set; }

        public long? RoleId { get; set; }

        public long? FunctionId { get; set; }

        public long? CreatedBy { get; set; }

        public DateTime? CreatedTime { get; set; }

        public long? ModifiedBy { get; set; }

        public DateTime? ModifiedTime { get; set; }

        public bool? IsDeleted { get; set; }

        public long? DeletedBy { get; set; }

        public DateTime? DeletedTime { get; set; }
    }
}
