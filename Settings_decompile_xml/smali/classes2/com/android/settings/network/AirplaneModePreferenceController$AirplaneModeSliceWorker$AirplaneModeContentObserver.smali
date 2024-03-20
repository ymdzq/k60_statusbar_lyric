.class public Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;
.super Landroid/database/ContentObserver;
.source "AirplaneModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AirplaneModeContentObserver"
.end annotation


# instance fields
.field private final mSliceBackgroundWorker:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;

.field final synthetic this$0:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;Landroid/os/Handler;Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;->this$0:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;

    .line 274
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 275
    iput-object p3, p0, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;->mSliceBackgroundWorker:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker$AirplaneModeContentObserver;->mSliceBackgroundWorker:Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;

    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController$AirplaneModeSliceWorker;->updateSlice()V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    const-string v0, "airplane_mode_on"

    .line 284
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 0

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
