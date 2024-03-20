.class public Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$ServiceStateTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "FiveGNrcaMDBPreferenceController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceStateTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$ServiceStateTelephonyCallback;->this$0:Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$ServiceStateTelephonyCallback;->this$0:Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->-$$Nest$mupdateNrcaState(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;Landroid/telephony/ServiceState;)V

    return-void
.end method
