.class public Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;
.super Ljava/lang/Object;
.source "PrivacyThumbnailBlurSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppItem"
.end annotation


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public mLabel:Ljava/lang/String;

.field private mPrivacyThumbnailBlurEnable:Z

.field private mType:I

.field final synthetic this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPrivacyThumbnailBlurEnable(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mPrivacyThumbnailBlurEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPrivacyThumbnailBlurEnable(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mPrivacyThumbnailBlurEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 1

    .line 116
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mType:I

    .line 117
    iput-object p2, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\u00A0"

    const-string v0, " "

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mType:I

    .line 120
    iput-boolean p3, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mPrivacyThumbnailBlurEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mLabel:Ljava/lang/String;

    const/4 p1, 0x1

    .line 125
    iput p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mType:I

    return-void
.end method


# virtual methods
.method public getPkg()Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
