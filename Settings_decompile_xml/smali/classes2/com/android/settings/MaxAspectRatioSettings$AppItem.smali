.class public Lcom/android/settings/MaxAspectRatioSettings$AppItem;
.super Ljava/lang/Object;
.source "MaxAspectRatioSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MaxAspectRatioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppItem"
.end annotation


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mDefaultAspectType:I

.field public mLabel:Ljava/lang/String;

.field private mRestrict:Z

.field private mType:I

.field final synthetic this$0:Lcom/android/settings/MaxAspectRatioSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppInfo(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestrict(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mRestrict:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmRestrict(Lcom/android/settings/MaxAspectRatioSettings$AppItem;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mRestrict:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/MaxAspectRatioSettings;Landroid/content/pm/ApplicationInfo;ZI)V
    .locals 1

    .line 149
    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mType:I

    .line 150
    iput-object p2, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 151
    invoke-static {p1}, Lcom/android/settings/MaxAspectRatioSettings;->-$$Nest$fgetmPackageManager(Lcom/android/settings/MaxAspectRatioSettings;)Landroid/content/pm/PackageManager;

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

    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 152
    iput p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mType:I

    .line 153
    iput-boolean p3, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mRestrict:Z

    .line 154
    iput p4, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mDefaultAspectType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/MaxAspectRatioSettings;Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mLabel:Ljava/lang/String;

    const/4 p1, 0x1

    .line 159
    iput p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mType:I

    return-void
.end method


# virtual methods
.method public getPkg()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public mutable()Z
    .locals 1

    .line 171
    iget p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->mDefaultAspectType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
