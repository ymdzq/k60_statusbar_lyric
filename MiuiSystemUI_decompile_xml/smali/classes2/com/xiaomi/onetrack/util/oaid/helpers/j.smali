.class public final Lcom/xiaomi/onetrack/util/oaid/helpers/j;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public a:Lcom/xiaomi/onetrack/util/oaid/a/e;

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final c:Lcom/xiaomi/onetrack/util/oaid/helpers/OppoDeviceIDHelper$1;

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
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/OppoDeviceIDHelper$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/OppoDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/j;)V

    .line 15
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Lcom/xiaomi/onetrack/util/oaid/helpers/OppoDeviceIDHelper$1;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "OUID"

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->e:Ljava/lang/String;

    .line 8
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v2, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    move-result-object p1

    .line 18
    const/16 v2, 0x40

    .line 19
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 21
    move-result-object p1

    .line 24
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    move-object p1, v5

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    array-length v2, p1

    .line 35
    if-lez v2, :cond_1

    .line 36
    aget-object p1, p1, v3

    .line 38
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 40
    move-result-object p1

    .line 43
    :try_start_1
    const-string v2, "SHA1"

    .line 44
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 46
    move-result-object v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 52
    move-result-object p1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    array-length v6, p1

    .line 61
    move v7, v3

    .line 62
    :goto_1
    if-ge v7, v6, :cond_0

    .line 63
    aget-byte v8, p1, v7

    .line 65
    and-int/lit16 v8, v8, 0xff

    .line 67
    or-int/lit16 v8, v8, 0x100

    .line 69
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 71
    move-result-object v8

    .line 74
    const/4 v9, 0x3

    .line 75
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    move-result-object v8

    .line 79
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v7, v7, 0x1

    .line 83
    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    goto :goto_2

    .line 90
    :catch_1
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    :cond_1
    move-object p1, v5

    .line 95
    :goto_2
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->e:Ljava/lang/String;

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a:Lcom/xiaomi/onetrack/util/oaid/a/e;

    .line 98
    check-cast p1, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;

    .line 100
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->e:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 107
    move-result-object v2

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 111
    move-result-object v6

    .line 114
    :try_start_2
    const-string v7, "com.heytap.openid.IOpenID"

    .line 115
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p0, p1, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;->a:Landroid/os/IBinder;

    .line 129
    invoke-interface {p0, v4, v2, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 131
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 134
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 137
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    goto :goto_3

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    goto :goto_4

    .line 143
    :catch_2
    move-exception p0

    .line 144
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 151
    return-object v5

    .line 154
    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 158
    throw p0
    .line 161
.end method
