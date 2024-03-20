.class Lcom/android/settings/FullScreenDisplaySettings$8;
.super Ljava/lang/Object;
.source "FullScreenDisplaySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FullScreenDisplaySettings;->initSwitchScreenButtonOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FullScreenDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings$8;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 282
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 283
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings$8;->this$0:Lcom/android/settings/FullScreenDisplaySettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->setRightHand(Z)V

    const/4 p0, 0x1

    return p0
.end method
