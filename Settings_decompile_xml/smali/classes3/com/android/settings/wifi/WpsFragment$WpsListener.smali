.class Lcom/android/settings/wifi/WpsFragment$WpsListener;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WpsListener"
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/wifi/WpsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 1

    .line 304
    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    .line 305
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsFragment$WpsListener;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 1

    .line 335
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$WpsListener;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WpsFragment;

    if-eqz p0, :cond_1

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const-string p1, ""

    .line 359
    sget-object v0, Lcom/android/settings/wifi/WpsFragment$State;->WPS_FAILED:Lcom/android/settings/wifi/WpsFragment$State;

    invoke-static {p0, v0, p1}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$mupdateState(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 1

    .line 310
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$WpsListener;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WpsFragment;

    if-eqz p0, :cond_2

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 314
    invoke-static {p0, p1}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fputmPin(Lcom/android/settings/wifi/WpsFragment;Ljava/lang/String;)V

    .line 315
    sget-object p1, Lcom/android/settings/wifi/WpsFragment$State;->WPS_START:Lcom/android/settings/wifi/WpsFragment$State;

    invoke-static {p0, p1, v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$mupdateState(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-static {p0, v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$fputmPin(Lcom/android/settings/wifi/WpsFragment;Ljava/lang/String;)V

    .line 318
    sget-object p1, Lcom/android/settings/wifi/WpsFragment$State;->WPS_START:Lcom/android/settings/wifi/WpsFragment$State;

    invoke-static {p0, p1, v0}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$mupdateState(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSucceeded()V
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$WpsListener;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WpsFragment;

    if-eqz p0, :cond_0

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    :cond_0
    return-void
.end method
