.class public Lcom/android/settings/development/FiveGNrcaPreferenceController$ServiceStateTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "FiveGNrcaPreferenceController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/FiveGNrcaPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceStateTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/FiveGNrcaPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/FiveGNrcaPreferenceController;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController$ServiceStateTelephonyCallback;->this$0:Lcom/android/settings/development/FiveGNrcaPreferenceController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController$ServiceStateTelephonyCallback;->this$0:Lcom/android/settings/development/FiveGNrcaPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->-$$Nest$mupdateNrcaState(Lcom/android/settings/development/FiveGNrcaPreferenceController;Landroid/telephony/ServiceState;)V

    return-void
.end method
