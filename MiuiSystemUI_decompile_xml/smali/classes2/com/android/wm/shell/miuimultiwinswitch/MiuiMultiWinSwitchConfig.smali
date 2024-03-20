.class public Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final CLOUD_KEY_ACTIVITY_DOT_BLACK_LIST:Ljava/lang/String; = "activity_dot_black_list"

.field private static final CLOUD_KEY_BOTTOM_CAPTION_INSETS_BLACK_LIST:Ljava/lang/String; = "bottom_caption_insets_black_list"

.field private static final CLOUD_KEY_DOT_BLACK_LIST:Ljava/lang/String; = "dot_black_list"

.field private static final CLOUD_KEY_TOP_CAPTION_INSETS_BLACK_LIST:Ljava/lang/String; = "top_caption_insets_black_list"

.field private static final CLOUD_MODULE_NAME:Ljava/lang/String; = "MiuiFreeform"

.field private static final TAG:Ljava/lang/String; = "MiuiMultiWinSwitchConfig"


# instance fields
.field private final mActivityDotBlackList:Ljava/util/Set;

.field private final mBottomCaptionInsetsBlackList:Ljava/util/Set;

.field private final mContext:Landroid/content/Context;

.field private final mDotBlackList:Ljava/util/Set;

.field private final mTopCaptionInsetsBlackList:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$XA0h6pzOvAXj-vCTgmQHqCNRt7E(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->lambda$updateCloudDataSet$0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$bv4WxeAU2fzJvdYk6qkFl5bOyEU(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->updateCloudData()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mupdateCloudData(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->updateCloudData()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mContext:Landroid/content/Context;

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object p1

    .line 10
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getCloudDataNotifyUri()Landroid/net/Uri;

    .line 15
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$1;

    .line 19
    invoke-direct {v1, p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;Landroid/os/Handler;)V

    .line 21
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->TAG:Ljava/lang/String;

    .line 30
    const-string v1, "registerContentObserver exception:"

    .line 32
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :goto_0
    new-instance p1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;)V

    .line 39
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p1

    .line 50
    new-instance p2, Landroid/util/ArraySet;

    .line 51
    const v0, 0x7f03007b    # @array/dot_black_list

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 60
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mDotBlackList:Ljava/util/Set;

    .line 63
    const/high16 p2, 0x7f030000    # @array/activity_dot_black_list

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 70
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 71
    move-result-object p2

    .line 74
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda1;

    .line 75
    const/4 v1, 0x0

    .line 77
    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda1;-><init>(I)V

    .line 78
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 81
    move-result-object p2

    .line 84
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 85
    move-result-object v0

    .line 88
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 89
    move-result-object p2

    .line 92
    check-cast p2, Ljava/util/Set;

    .line 93
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mActivityDotBlackList:Ljava/util/Set;

    .line 95
    new-instance p2, Landroid/util/ArraySet;

    .line 97
    const v0, 0x7f0300d5    # @array/top_caption_insets_black_list

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 105
    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 106
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mTopCaptionInsetsBlackList:Ljava/util/Set;

    .line 109
    new-instance p2, Landroid/util/ArraySet;

    .line 111
    const v0, 0x7f030025    # @array/bottom_caption_insets_black_list

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 119
    invoke-direct {p2, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 120
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mBottomCaptionInsetsBlackList:Ljava/util/Set;

    .line 123
    return-void
    .line 125
.end method

.method private static synthetic lambda$updateCloudDataSet$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method private updateCloudData()V
    .locals 3

    .line 1
    const-string v0, "dot_black_list"

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mDotBlackList:Ljava/util/Set;

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->updateCloudDataSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mActivityDotBlackList:Ljava/util/Set;

    .line 9
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda1;

    .line 11
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda1;-><init>(I)V

    .line 14
    const-string v2, "activity_dot_black_list"

    .line 17
    invoke-direct {p0, v2, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->updateCloudDataSet(Ljava/lang/String;Ljava/util/Set;Ljava/util/function/Function;)V

    .line 19
    const-string/jumbo v0, "top_caption_insets_black_list"

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mTopCaptionInsetsBlackList:Ljava/util/Set;

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->updateCloudDataSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 27
    const-string v0, "bottom_caption_insets_black_list"

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mBottomCaptionInsetsBlackList:Ljava/util/Set;

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->updateCloudDataSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 34
    return-void
    .line 37
.end method

.method private updateCloudDataSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->updateCloudDataSet(Ljava/lang/String;Ljava/util/Set;Ljava/util/function/Function;)V

    return-void
.end method

.method private updateCloudDataSet(Ljava/lang/String;Ljava/util/Set;Ljava/util/function/Function;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mContext:Landroid/content/Context;

    const-string v1, "MiuiFreeform"

    const-string v2, ""

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateCloudDataSet cloudKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 10
    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updateCloudDataSet exception!"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getActivityDotBlackList()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mActivityDotBlackList:Ljava/util/Set;

    .line 2
    return-object p0
    .line 4
.end method

.method public getBottomCaptionInsetsBlackList()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mBottomCaptionInsetsBlackList:Ljava/util/Set;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDotBlackList()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mDotBlackList:Ljava/util/Set;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTopCaptionInsetsBlackList()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;->mTopCaptionInsetsBlackList:Ljava/util/Set;

    .line 2
    return-object p0
    .line 4
.end method
