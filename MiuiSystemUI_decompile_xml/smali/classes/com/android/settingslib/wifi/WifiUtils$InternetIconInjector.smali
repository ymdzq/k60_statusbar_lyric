.class public final Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;->mContext:Landroid/content/Context;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const-string v0, "Wi-Fi level is out of range! level:"

    .line 2
    const-string v1, "WifiUtils"

    .line 4
    if-gez p1, :cond_0

    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x5

    .line 13
    if-lt p1, v2, :cond_1

    .line 14
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    const/4 p1, 0x4

    .line 19
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 20
    sget-object p2, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    .line 22
    aget p1, p2, p1

    .line 24
    goto :goto_1

    .line 26
    :cond_2
    sget-object p2, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    .line 27
    aget p1, p2, p1

    .line 29
    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method
