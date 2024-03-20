.class Lcom/android/settings/freeform/FreeformGuideSettings$1;
.super Ljava/lang/Object;
.source "FreeformGuideSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/freeform/FreeformGuideSettings;->initFreeformRecommendView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/freeform/FreeformGuideSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/android/settings/freeform/FreeformGuideSettings$1;->this$0:Lcom/android/settings/freeform/FreeformGuideSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings$1;->this$0:Lcom/android/settings/freeform/FreeformGuideSettings;

    invoke-static {p0, p2}, Lcom/android/settings/freeform/FreeformGuideSettings;->-$$Nest$mmainSwitchPreferenceOnChanged(Lcom/android/settings/freeform/FreeformGuideSettings;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
