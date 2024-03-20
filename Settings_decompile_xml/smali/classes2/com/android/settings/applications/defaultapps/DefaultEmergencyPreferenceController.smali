.class public Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultEmergencyPreferenceController.java"


# static fields
.field public static final QUERY_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;->QUERY_INTENT:Landroid/content/Intent;

    return-void
.end method
