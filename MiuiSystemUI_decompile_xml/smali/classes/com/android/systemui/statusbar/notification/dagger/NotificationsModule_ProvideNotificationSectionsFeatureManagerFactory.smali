.class public abstract Lcom/android/systemui/statusbar/notification/dagger/NotificationsModule_ProvideNotificationSectionsFeatureManagerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideNotificationSectionsFeatureManager(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsFeatureManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsFeatureManager;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/MiuiNotificationSectionsFeatureManager;-><init>(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)V

    .line 4
    return-object v0
    .line 7
.end method
