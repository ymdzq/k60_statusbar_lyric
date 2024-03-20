.class public Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
.super Lcom/android/settings/search/SearchResultItem$Builder;
.source "AppSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/appseparate/AppSearchResultItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private intentAction:Ljava/lang/String;

.field private intentTargetClass:Ljava/lang/String;

.field private intentTargetPackage:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private mIconResId:I

.field private mInfo:Landroid/content/pm/ApplicationInfo;

.field private other:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private summaryOff:Ljava/lang/String;

.field private summaryOn:Ljava/lang/String;

.field private uriString:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetappName(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->appName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextras(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->extras:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetintentAction(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->intentAction:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetintentTargetClass(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->intentTargetClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetintentTargetPackage(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->intentTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeywords(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconResId(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->mIconResId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfo(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->other:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsummaryOff(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->summaryOff:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsummaryOn(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->summaryOn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturiString(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->uriString:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/search/SearchResultItem$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/settings/search/SearchResultItem;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->build()Lcom/android/settings/search/appseparate/AppSearchResultItem;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/settings/search/appseparate/AppSearchResultItem;
    .locals 1

    .line 150
    new-instance v0, Lcom/android/settings/search/appseparate/AppSearchResultItem;

    invoke-direct {v0, p0}, Lcom/android/settings/search/appseparate/AppSearchResultItem;-><init>(Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;)V

    return-object v0
.end method

.method public setAppInfo(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public setExtras(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->extras:Ljava/lang/String;

    return-object p0
.end method

.method public setIconResId(I)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->mIconResId:I

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->intentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->intentTargetClass:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->intentTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->setKeywords(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public setOther(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->other:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setSummaryOff(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->summaryOff:Ljava/lang/String;

    return-object p0
.end method

.method public setSummaryOn(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->summaryOn:Ljava/lang/String;

    return-object p0
.end method

.method public setUriString(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->uriString:Ljava/lang/String;

    return-object p0
.end method
