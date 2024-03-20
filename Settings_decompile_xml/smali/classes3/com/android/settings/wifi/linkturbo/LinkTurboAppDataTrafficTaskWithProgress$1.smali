.class Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress$1;
.super Ljava/lang/Object;
.source "LinkTurboAppDataTrafficTaskWithProgress.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress$1;->this$0:Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;)I
    .locals 2

    .line 62
    iget-boolean p0, p2, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;->mIsChecked:Z

    iget-boolean v0, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;->mIsChecked:Z

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    .line 66
    :cond_1
    iget-wide v0, p2, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;->mMobileDataTrafficOfThisMonth:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide p1, p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;->mMobileDataTrafficOfThisMonth:J

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 58
    check-cast p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;

    check-cast p2, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress$1;->compare(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;)I

    move-result p0

    return p0
.end method
