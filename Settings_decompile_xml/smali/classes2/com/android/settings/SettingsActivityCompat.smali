.class public Lcom/android/settings/SettingsActivityCompat;
.super Ljava/lang/Object;
.source "SettingsActivityCompat.java"


# direct methods
.method public static startPreferencePanel(Landroid/app/Activity;Lmiuix/appcompat/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Lmiuix/appcompat/app/Fragment;I)V
    .locals 10

    move-object v0, p0

    .line 14
    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 15
    move-object v2, v0

    check-cast v2, Lcom/android/settings/SettingsActivity;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    :cond_0
    return-void
.end method
