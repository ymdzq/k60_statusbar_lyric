.class Lcom/android/settings/stylus/MiuiStylusSettings$3;
.super Ljava/lang/Object;
.source "MiuiStylusSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/stylus/MiuiStylusSettings;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/stylus/MiuiStylusSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/stylus/MiuiStylusSettings;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusSettings$3;->this$0:Lcom/android/settings/stylus/MiuiStylusSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 307
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusSettings$3;->this$0:Lcom/android/settings/stylus/MiuiStylusSettings;

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->access$000(Lcom/android/settings/stylus/MiuiStylusSettings;)Landroid/content/ContentResolver;

    move-result-object p0

    .line 308
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo v0, "stylus_handwriting_enable"

    .line 307
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " onPreferenceChange mStylusGlobalCheckBox : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiStylusSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
