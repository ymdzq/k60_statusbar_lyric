.class public final Lcom/android/wifitrackerlib/PasspointUtilsStub;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static volatile mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

.field public static volatile mPasspointUtils:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "com.android.settingslib.wifi.PasspointUtils"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mPasspointUtils:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    return-void
    .line 15
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mPasspointUtils:Ljava/lang/Class;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mPasspointUtils:Ljava/lang/Class;

    .line 9
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Ljava/lang/Class;

    .line 12
    const-class v1, Landroid/content/Context;

    .line 14
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    move-result-object p0

    .line 22
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :cond_0
    :goto_0
    return-void
    .line 39
.end method
