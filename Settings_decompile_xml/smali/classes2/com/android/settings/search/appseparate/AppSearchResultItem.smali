.class public Lcom/android/settings/search/appseparate/AppSearchResultItem;
.super Lcom/android/settings/search/SearchResultItem;
.source "AppSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    }
.end annotation


# static fields
.field public static final DISABLED:I = 0x1

.field public static final INVISIBLE:I = 0x0

.field public static final VISIBLE:I = 0x2


# instance fields
.field private final appName:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private iconResId:I

.field private final info:Landroid/content/pm/ApplicationInfo;

.field private intentAction:Ljava/lang/String;

.field private intentTargetClass:Ljava/lang/String;

.field private intentTargetPackage:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private other:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private summaryOff:Ljava/lang/String;

.field private summaryOn:Ljava/lang/String;

.field private uriString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/search/SearchResultItem;-><init>(Lcom/android/settings/search/SearchResultItem$Builder;)V

    .line 34
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetmInfo(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->info:Landroid/content/pm/ApplicationInfo;

    .line 35
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetmIconResId(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->iconResId:I

    .line 36
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetpackageName(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->packageName:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetsummaryOn(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->summaryOn:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetsummaryOff(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->summaryOff:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetkeywords(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->keywords:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetintentAction(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->intentAction:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetintentTargetPackage(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->intentTargetPackage:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetintentTargetClass(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->intentTargetClass:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgeturiString(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->uriString:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetextras(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->extras:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetother(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->other:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->-$$Nest$fgetappName(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->appName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 58
    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getIconResId()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->iconResId:I

    return p0
.end method

.method public getInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem;->info:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method
