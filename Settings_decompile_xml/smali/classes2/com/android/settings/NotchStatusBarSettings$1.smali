.class Lcom/android/settings/NotchStatusBarSettings$1;
.super Ljava/lang/Object;
.source "NotchStatusBarSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotchStatusBarSettings;->setupNotch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotchStatusBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotchStatusBarSettings;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/NotchStatusBarSettings$1;->this$0:Lcom/android/settings/NotchStatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/settings/NotchStatusBarSettings$1;->this$0:Lcom/android/settings/NotchStatusBarSettings;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/NotchStatusBarSettings;->-$$Nest$msetDripType(Lcom/android/settings/NotchStatusBarSettings;Z)V

    const/4 p0, 0x1

    return p0
.end method
