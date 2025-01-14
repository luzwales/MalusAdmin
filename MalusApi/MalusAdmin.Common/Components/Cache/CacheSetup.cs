﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MalusAdmin.Common.Components.Cache;
using Microsoft.Extensions.Caching.Distributed;
using Microsoft.Extensions.DependencyInjection;

namespace MalusAdmin.Common
{
    public static class CacheSetup
    {
        /// <summary>
        /// 注册缓存服务，如有配置 Redis 则启用，没有则启用分布式内存缓存（DistributedMemoryCache）
        /// </summary>
        /// <param name="services"></param>
        /// <returns></returns>
        public static IServiceCollection AddCacheSetup(this IServiceCollection services)
        {
            // 根据情况，启用 Redis 或 DistributedMemoryCache
            if (AppSettings.Redis.Enabled)
            {
                services.AddSingleton<ICacheService, RedisCacheService>();
            }
            else
            {
                services.AddSingleton<ICacheService, MemoryCacheService>();
            }
            //更多的缓存实现方式 
            return services;
        }

    }
}
