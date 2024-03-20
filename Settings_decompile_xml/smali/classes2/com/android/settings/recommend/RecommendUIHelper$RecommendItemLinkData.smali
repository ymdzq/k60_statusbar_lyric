.class Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;
.super Ljava/lang/Object;
.source "RecommendUIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/recommend/RecommendUIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecommendItemLinkData"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private string:Landroid/text/SpannableString;

.field final synthetic this$0:Lcom/android/settings/recommend/RecommendUIHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/recommend/RecommendUIHelper;Landroid/text/SpannableString;Landroid/content/Intent;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;->this$0:Lcom/android/settings/recommend/RecommendUIHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;->string:Landroid/text/SpannableString;

    .line 201
    iput-object p3, p0, Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public getString()Landroid/text/SpannableString;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/settings/recommend/RecommendUIHelper$RecommendItemLinkData;->string:Landroid/text/SpannableString;

    return-object p0
.end method
