.class public Lcom/android/settings/search/appseparate/SearchRawData;
.super Ljava/lang/Object;
.source "SearchRawData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/appseparate/SearchRawData$Builder;
    }
.end annotation


# instance fields
.field public extras:Ljava/lang/String;

.field public iconResId:I

.field public intentAction:Ljava/lang/String;

.field public intentTargetClass:Ljava/lang/String;

.field public intentTargetPackage:Ljava/lang/String;

.field public intentUri:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public other:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uriString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgettitle(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->title:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetpackageName(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->packageName:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetsummaryOn(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->summaryOn:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetsummaryOff(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->summaryOff:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetkeywords(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->keywords:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgeticonResId(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->iconResId:I

    .line 77
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetintentAction(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->intentAction:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetintentTargetPackage(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->intentTargetPackage:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetintentTargetClass(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->intentTargetClass:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgeturiString(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->uriString:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetextras(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->extras:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetother(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SearchRawData;->other:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->-$$Nest$fgetintentUri(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/appseparate/SearchRawData;->intentUri:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/appseparate/SearchRawData$Builder;Lcom/android/settings/search/appseparate/SearchRawData-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/search/appseparate/SearchRawData;-><init>(Lcom/android/settings/search/appseparate/SearchRawData$Builder;)V

    return-void
.end method
