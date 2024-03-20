.class Lcom/android/settings/display/DarkModeFragment$3;
.super Ljava/lang/Object;
.source "DarkModeFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/DarkModeFragment;->refreshAppList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/display/DarkModeAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/DarkModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/DarkModeFragment;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment$3;->this$0:Lcom/android/settings/display/DarkModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/display/DarkModeAppInfo;Lcom/android/settings/display/DarkModeAppInfo;)I
    .locals 4

    .line 440
    invoke-virtual {p1}, Lcom/android/settings/display/DarkModeAppInfo;->getLastTimeUsed()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/display/DarkModeAppInfo;->getLastTimeUsed()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 442
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/display/DarkModeAppInfo;->getLastTimeUsed()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/settings/display/DarkModeAppInfo;->getLastTimeUsed()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 437
    check-cast p1, Lcom/android/settings/display/DarkModeAppInfo;

    check-cast p2, Lcom/android/settings/display/DarkModeAppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/DarkModeFragment$3;->compare(Lcom/android/settings/display/DarkModeAppInfo;Lcom/android/settings/display/DarkModeAppInfo;)I

    move-result p0

    return p0
.end method
