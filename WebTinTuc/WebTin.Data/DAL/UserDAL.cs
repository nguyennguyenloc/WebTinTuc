using System.Linq;
using WebTin.Data.Entities;


namespace WebTin.Data.DAL
{
    public class UserDAL
    {
        private DefaultDbContext context = new DefaultDbContext();

        public User GetByUsername(string username)
        {

           //Demo left join
           //var user1= .............

            //Get from database
            var user = context.Users
                .Where(i => i.Username == username && i.IsDeleted == false)
                .FirstOrDefault();
            return user;
        }

        public bool Update(User model)
        {
            try
            {
                //Get item user with Id from database
                var item = context.Users.Where(i => i.Id == model.Id).FirstOrDefault();
                
                //Set value item with value from model
                item.Username = model.Username;
                item.Address = model.Address;
                item.CreatedBy = model.CreatedBy;
                item.CreatedTime = model.CreatedTime;
                item.DateOfBirth = model.DateOfBirth;
                item.DeletedBy = model.DeletedBy;
                item.DeletedTime = model.DeletedTime;
                item.Email = model.Email;
                item.FirstName = model.FirstName;
                item.Id = model.Id;
                item.IsDeleted = model.IsDeleted;
                item.LastName = item.LastName;
                item.ModifiedBy = model.ModifiedBy;
                item.ModifiedTime = model.ModifiedTime;
                item.PasswordEncrypted = item.PasswordEncrypted;
                item.PasswordSalt = model.PasswordSalt;
                item.PhoneNumber = model.PhoneNumber;
                item.Sex = model.Sex;
                item.Username = model.Username;
                //Save change to database
                context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Create(User model)
        {
            try
            {
                //Initialization empty item
                var item = new User();
                //khơi tao bang khung du lieu
                //Set value for item with value from model

                item.Username = model.Username;
                item.Address = model.Address;
                item.CreatedBy = model.CreatedBy;
                item.CreatedTime = model.CreatedTime;
                item.DateOfBirth = model.DateOfBirth;
                item.DeletedBy = model.DeletedBy;
                item.DeletedTime = model.DeletedTime;
                item.Email = model.Email;
                item.FirstName = model.FirstName;
                item.Id = model.Id;
                item.IsDeleted = model.IsDeleted;
                item.LastName = item.LastName;
                item.ModifiedBy = model.ModifiedBy;
                item.ModifiedTime = model.ModifiedTime;
                item.PasswordEncrypted = item.PasswordEncrypted;
                item.PasswordSalt = model.PasswordSalt;
                item.PhoneNumber = model.PhoneNumber;
                item.Sex = model.Sex;
                item.Username = model.Username;
                //gan du lieu vao bang
                //Add item to entity
                context.Users.Add(item);// add du lieu vao linq
                //Save to database
                context.SaveChanges();//du lieu se cap nhat vao bang khi chay cau lenh nay, không chay là không cập nhât vào bảng
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool Delete(long id)
        {
            try
            {
                //Tương tự update
                var item = context.Users.SingleOrDefault(i => i.Id == id);

                //Remove item.
                context.Users.Remove(item);

                //Change database
                context.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}