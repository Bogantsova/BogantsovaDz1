using System;

namespace Homework1
{
    internal class DataBase : IDisposable
    {
        public object Users { get; internal set; }

        public void Dispose()
        {
            throw new NotImplementedException();
        }
    }
}