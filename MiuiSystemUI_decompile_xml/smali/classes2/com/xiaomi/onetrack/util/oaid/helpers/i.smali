.class public final Lcom/xiaomi/onetrack/util/oaid/helpers/i;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public a:Lcom/xiaomi/onetrack/util/oaid/a/d;

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final c:Lcom/xiaomi/onetrack/util/oaid/helpers/OnePlusDeviceIDHelper$1;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/OnePlusDeviceIDHelper$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/OnePlusDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/i;)V

    .line 15
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->c:Lcom/xiaomi/onetrack/util/oaid/helpers/OnePlusDeviceIDHelper$1;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "OUID"

    .line 2
    const-string v1, "OnePlusDeviceIDHelper"

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->e:Ljava/lang/String;

    .line 10
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    if-nez v3, :cond_2

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object p1

    .line 20
    const/16 v3, 0x40

    .line 21
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 23
    move-result-object p1

    .line 26
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    move-object p1, v6

    .line 38
    :goto_0
    if-eqz p1, :cond_1

    .line 39
    array-length v3, p1

    .line 41
    if-lez v3, :cond_1

    .line 42
    aget-object p1, p1, v4

    .line 44
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 46
    move-result-object p1

    .line 49
    :try_start_1
    const-string v3, "SHA1"

    .line 50
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 52
    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 58
    move-result-object p1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    array-length v7, p1

    .line 67
    move v8, v4

    .line 68
    :goto_1
    if-ge v8, v7, :cond_0

    .line 69
    aget-byte v9, p1, v8

    .line 71
    and-int/lit16 v9, v9, 0xff

    .line 73
    or-int/lit16 v9, v9, 0x100

    .line 75
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 77
    move-result-object v9

    .line 80
    const/4 v10, 0x3

    .line 81
    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    move-result-object v9

    .line 85
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v8, v8, 0x1

    .line 89
    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    goto :goto_2

    .line 96
    :catch_1
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 101
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    move-object p1, v6

    .line 105
    :goto_2
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->e:Ljava/lang/String;

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->a:Lcom/xiaomi/onetrack/util/oaid/a/d;

    .line 108
    check-cast p1, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;

    .line 110
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->e:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 117
    move-result-object v1

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 121
    move-result-object v3

    .line 124
    :try_start_2
    const-string v7, "com.heytap.openid.IOpenID"

    .line 125
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object p0, p1, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;->a:Landroid/os/IBinder;

    .line 139
    invoke-interface {p0, v5, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 141
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 144
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 147
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    goto :goto_3

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    goto :goto_4

    .line 153
    :catch_2
    move-exception p0

    .line 154
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 161
    return-object v6

    .line 164
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 168
    throw p0
    .line 171
.end method
