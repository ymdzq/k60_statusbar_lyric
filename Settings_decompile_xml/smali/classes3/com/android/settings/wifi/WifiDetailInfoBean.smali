.class public Lcom/android/settings/wifi/WifiDetailInfoBean;
.super Ljava/lang/Object;
.source "WifiDetailInfoBean.java"


# instance fields
.field private iconNameId:I

.field private summary:Ljava/lang/String;

.field private titleId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/android/settings/wifi/WifiDetailInfoBean;->iconNameId:I

    .line 11
    iput p2, p0, Lcom/android/settings/wifi/WifiDetailInfoBean;->titleId:I

    .line 12
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDetailInfoBean;->summary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIconNameId()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/settings/wifi/WifiDetailInfoBean;->iconNameId:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDetailInfoBean;->summary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleId()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/wifi/WifiDetailInfoBean;->titleId:I

    return p0
.end method
