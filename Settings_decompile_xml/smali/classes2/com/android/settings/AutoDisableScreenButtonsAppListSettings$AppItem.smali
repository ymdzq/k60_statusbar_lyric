.class Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppItem"
.end annotation


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mDes:Ljava/lang/String;

.field private mFlag:I

.field private mLabel:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDes(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mDes:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlag(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mFlag:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLabel(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mType:I

    return p0
.end method

.method public constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1

    .line 278
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mType:I

    .line 279
    iput-object p2, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 280
    invoke-static {p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmPackageManager(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/pm/PackageManager;

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

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 281
    iput p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mType:I

    .line 282
    invoke-virtual {p0, p3}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->setFlag(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mLabel:Ljava/lang/String;

    const/4 p1, 0x1

    .line 287
    iput p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mType:I

    return-void
.end method


# virtual methods
.method public getPkg()Ljava/lang/String;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setFlag(I)V
    .locals 2

    .line 295
    iput p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mFlag:I

    .line 296
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$smgetAppText(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->mDes:Ljava/lang/String;

    return-void
.end method
