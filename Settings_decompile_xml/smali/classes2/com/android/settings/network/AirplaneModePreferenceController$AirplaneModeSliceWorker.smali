.class public Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "AirplaneModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/AirplaneModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirplaneModeSliceWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContentObserver:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 246
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 247
    new-instance p2, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;

    invoke-direct {p2, p0, p1, p0}, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;-><init>(Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;Landroid/os/Handler;Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;)V

    iput-object p2, p0, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;->mContentObserver:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;->mContentObserver:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;

    return-void
.end method

.method protected onSlicePinned()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;->mContentObserver:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;->register(Landroid/content/Context;)V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;->mContentObserver:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;->unRegister(Landroid/content/Context;)V

    return-void
.end method

.method public updateSlice()V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method
