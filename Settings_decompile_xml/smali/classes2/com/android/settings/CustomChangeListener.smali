# classes5.dex

.class public Lcom/android/settings/CustomChangeListener;
.super Ljava/lang/Object;
.source "CustomChangeListener.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final customKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "customKey"  # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/settings/CustomChangeListener;->customKey:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .param p1, "preference"  # Landroidx/preference/Preference;
    .param p2, "newValue"  # Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/android/settings/CustomChangeListener;->customKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 18
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/CustomChangeListener;->customKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 20
    return v1

    .line 22
    .end local v0  # "value":Ljava/lang/Boolean;
    :cond_22
    return v1
.end method
