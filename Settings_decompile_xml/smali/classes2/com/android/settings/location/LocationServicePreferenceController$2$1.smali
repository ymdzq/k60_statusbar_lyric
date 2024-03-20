.class Lcom/android/settings/location/LocationServicePreferenceController$2$1;
.super Ljava/lang/Object;
.source "LocationServicePreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationServicePreferenceController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/location/LocationServicePreferenceController$2;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationServicePreferenceController$2;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController$2$1;->this$1:Lcom/android/settings/location/LocationServicePreferenceController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 148
    iget-object p0, p0, Lcom/android/settings/location/LocationServicePreferenceController$2$1;->this$1:Lcom/android/settings/location/LocationServicePreferenceController$2;

    iget-object p0, p0, Lcom/android/settings/location/LocationServicePreferenceController$2;->this$0:Lcom/android/settings/location/LocationServicePreferenceController;

    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServices:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationServicePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
