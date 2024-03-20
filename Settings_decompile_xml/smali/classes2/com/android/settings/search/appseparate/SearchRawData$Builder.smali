.class public final Lcom/android/settings/search/appseparate/SearchRawData$Builder;
.super Ljava/lang/Object;
.source "SearchRawData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/appseparate/SearchRawData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private extras:Ljava/lang/String;

.field private iconResId:I

.field private intentAction:Ljava/lang/String;

.field private intentTargetClass:Ljava/lang/String;

.field private intentTargetPackage:Ljava/lang/String;

.field private intentUri:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private other:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private summaryOff:Ljava/lang/String;

.field private summaryOn:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uriString:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetextras(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->extras:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeticonResId(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->iconResId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetintentAction(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->intentAction:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetintentTargetClass(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->intentTargetClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetintentTargetPackage(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->intentTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetintentUri(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->intentUri:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeywords(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetother(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->other:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsummaryOff(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->summaryOff:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsummaryOn(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->summaryOn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturiString(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->uriString:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/search/appseparate/SearchRawData;
    .locals 2

    .line 166
    new-instance v0, Lcom/android/settings/search/appseparate/SearchRawData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/appseparate/SearchRawData;-><init>(Lcom/android/settings/search/appseparate/SearchRawData$Builder;Lcom/android/settings/search/appseparate/SearchRawData-IA;)V

    return-object v0
.end method

.method public setExtras(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->extras:Ljava/lang/String;

    return-object p0
.end method

.method public setIconResId(I)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 131
    iput p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->iconResId:I

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->intentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->intentTargetClass:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->intentTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentUri(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->intentUri:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public setOther(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->other:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setSummaryOff(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->summaryOff:Ljava/lang/String;

    return-object p0
.end method

.method public setSummaryOn(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->summaryOn:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setUriString(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->uriString:Ljava/lang/String;

    return-object p0
.end method
