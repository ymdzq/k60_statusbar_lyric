.class public Lcom/android/settings/panel/WifiPanel;
.super Ljava/lang/Object;
.source "WifiPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/WifiPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/panel/WifiPanel;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/settings/panel/WifiPanel;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/WifiPanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x697

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/android/settings/panel/WifiPanel;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_settings:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    iget-object v1, p0, Lcom/android/settings/panel/WifiPanel;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v5, 0x67

    sget v6, Lcom/android/settings/R$string;->menu_key_network:I

    .line 64
    invoke-static/range {v1 .. v6}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .line 70
    iget-object p0, p0, Lcom/android/settings/panel/WifiPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 71
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/android/settings/panel/WifiPanel;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_settings:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
